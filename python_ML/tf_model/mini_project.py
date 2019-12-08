## Mini Team Project

# 모델 저장하기
import tensorflow as tf
from tensorflow.examples.tutorials.mnist import input_data

#1. data loading
mnist = input_data.read_data_sets("./data/mnist", one_hot=True)

#2. model 정의(Tensorflow graph생성 ,데이터를 학습하기 위한 model)
tf.reset_default_graph() #Tensorflow graph 초기화
#2.1 placeholder
#shape는 입력데이터에 따라 결정됨
X = tf.placeholder(shape=[None,784], dtype=tf.float32,name="input") #
Y = tf.placeholder(shape=[None,10], dtype=tf.float32,name="output")
drop_rate =tf.placeholder(dtype=tf.float32,name="drop") #스칼라는 1차원이기때문에 shape없이 생성
#2.2 Convolution 작업
#CNN은 이미지 학습에 최적화된 deep learning방법
#입력받은 이미지의 형태가 4차원 매트릭스
#X데이터가 2차원이기때문에 4차원 매트릭스로 변경
#(이미지 개수, 이미지의 width, 이미지의 height,color수)
#color수 - 1 흑백, 3 컬러
X_img = tf.reshape(X,[-1,28,28,1])
#Convolution Layer1
# #필터정의->filter의 shape(width,height,color,filter수)
# #(데이터가 4차원이라서 필터도 4차원으로 생성)
# filter1 = tf.Variable(tf.random_normal([3,3,1,32]))
# #filter를 이용해서 convolution image를 생성
# #행렬곱 처리
# #strides=[] 맨앞1,맨뒤1 더미데이터
# L1 = tf.nn.conv2d(X_img,filter,strides=[1,1,1,1],
#                  padding="SAME")
# #만들어진 convolution에 relu를 적용
# #(NN에서 sigmoid경우 값이 흐려지기 때문에(값이 0) relu사용)
# L1 = tf.nn.relu(L1)
# # pooling작업(resize, sampling 작업) = > optional 선택사항(데이터 사이즈가 클경우 사용)
# #strides=[],ksize=[] 맨앞1,맨뒤1 더미데이터
# L1 = tf.nn.max_pool(L1, ksize=[1,2,2,1],
#                     strides=[1,2,2,1],padding="SAME")

#Convolution Layer1 생성 => tf.layers.conv2d()으로 대체
#kernel_size=[3,3] - filter size 가로*세로
L1 = tf.layers.conv2d(inputs=X_img, filters=32,
                     kernel_size=[3,3], padding="SAME", 
                      strides=1,activation=tf.nn.relu)
#tf.nn.max_pool() => tf.layers.max_pooling2d() 대체
L1 = tf.layers.max_pooling2d(inputs=L1,pool_size=[2,2],
                            padding="SAME",strides=2)
#Convolution Layer2
L2 = tf.layers.conv2d(inputs=L1, filters=64,
                     kernel_size=[3,3], padding="SAME", 
                      strides=1,activation=tf.nn.relu)

L2 = tf.layers.max_pooling2d(inputs=L2,pool_size=[2,2],
                            padding="SAME",strides=2)

print(L2.shape)
#(?, 7, 7, 64) ?행 7*7 64개
#2.3 Neural Network
#Convolution의 결과(4차원)를 
#Neural Network의 입력(2차원)으로 사용하기 위해 shape변경
L2 = tf.reshape(L2,[-1,7*7*64])

#Weight * bias 
#행렬곱을 연산을 위해 shape=[7*7*64,256] 지정, 256 logistic
W1 = tf.get_variable("weight1",shape=[7*7*64,256],
                    initializer=tf.contrib.layers.xavier_initializer())
b1 = tf.Variable(tf.random_normal([256]), name="bias1")
_layer1 = tf.nn.relu(tf.matmul(L2,W1)+ b1)
layer1 = tf.layers.dropout(_layer1, rate=drop_rate)

W2 = tf.get_variable("weight2",shape=[256,10],
                    initializer=tf.contrib.layers.xavier_initializer())
b2 = tf.Variable(tf.random_normal([10]), name="bias2")
#Hypothesis
logits = tf.matmul(layer1,W2) + b2
H = tf.nn.relu(logits)
H = tf.identity(H,name="hypothesis")

#cost function
cost = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(logits=logits,labels=Y))

#train
optimizer = tf.train.AdamOptimizer(learning_rate=0.001)
train = optimizer.minimize(cost)

#session, 초기화
sess = tf.Session()
sess.run(tf.global_variables_initializer())


#학습 진행(batch처리)
training_epoch = 10 
batch_size = 100 

for step in range(training_epoch):
    num_of_iter = int(mnist.train.num_examples / batch_size)
    cost_val = 0
    for i in range(num_of_iter):
        batch_x,batch_y = mnist.train.next_batch(batch_size) #지정한 사이즈만큼 데이터를 읽어옴
        _, cost_val = sess.run([train,cost],feed_dict={X:batch_x,Y:batch_y,drop_rate:0.7})
    
    if step % 3 == 0:
        print(cost_val)
        
saver = tf.train.Saver()
saver.save(sess, "./yeongseon/cnn/model/img_model.ckpt")

#Accuracy 측정
predict = tf.argmax(H,1) #열방향으로 큰값 추출
correct = tf.equal(predict, tf.argmax(Y,1)) #실제값과 예측값 비교
accuracy = tf.reduce_mean(tf.cast(correct,dtype=tf.float32))

result = sess.run(accuracy,feed_dict={X:mnist.test.images,
                                     Y:mnist.test.labels})

print("정확도:{}".format(result))


##################################################################
# 모델 불러오기
# import cv2
import sys
import numpy as np
import tensorflow as tf
import pandas as pd

from PIL import Image
import matplotlib.pyplot as plt
from skimage import io, color

def imgTest(modelPath,imagePath):  
    
    sess = tf.InteractiveSession()
    new_saver = tf.train.import_meta_graph(modelPath + "/dnn.ckpt.meta")
    new_saver.restore(sess, modelPath + "/dnn.ckpt")
    
    tf.get_default_graph()
    
    X = sess.graph.get_tensor_by_name("input:0")
    drop_rate = sess.graph.get_tensor_by_name("drop:0")
    H = sess.graph.get_tensor_by_name("hypothesis:0")
    
    img = Image.open(imagePath)
    img = img.resize((28,28))
    
    img = np.array(img)
    lina_gray = color.rgb2gray(img)
    lina_gray = 1 - lina_gray
   
    plt.imshow(lina_gray, cmap = "Greys", interpolation="nearest")
   
    #plt.show()
    
    pix = lina_gray.reshape(-1,784)
    
    result = sess.run(tf.argmax(H,1), 
                     feed_dict={X:pix,drop_rate:1})
    print(result[0])
    
    
imgTest(sys.argv[1],sys.argv[2])
#imgTest("C:/workspace/imgDeepLearning/src/main/resources/model","C:/workspace/imgDeepLearning/src/main/webapp/upload/7.png")
#imgTest("C:/python_ML/yeongseon/cnn/model","C:/workspace/imgDeepLearning/src/main/webapp/upload/7.png")

