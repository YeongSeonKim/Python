#### 2019 - 07 - 26 

# 빅데이터 분석_ Python

자바 api 설치

Tensorflow java api 검색

https://www.tensorflow.org/install/lang_java

![image-20191208195911339](assets/image-20191208195911339.png)

![image-20191208195916973](assets/image-20191208195916973.png)

이파일이 로딩되는지 확인해야됨!!



이클립스에서 프로젝트 생성!! - 자바 기본프로젝트로!

![image-20191208195940196](assets/image-20191208195940196.png)

![image-20191208200001621](assets/image-20191208200001621.png)

![image-20191208200006664](assets/image-20191208200006664.png)

LibLoad 자바 클래스 생성



**오후**

Tensoeflow for Java ( Web Application )

1. CNN을 이용한 Deep Learning을 python으로 구현

   => 모델을 생성하고 학습을 진행하는 부분까지 구현

   => 이렇게 학습한 내용을 file로 저장

   => 파일에 저장되는 내용은 Tensorflow 그래프와 Variable 데이터

2. Web Application 작성 ( Java Servlet )

   => -Djava.library.path=C:\python_ML\DLL

   => WAS : Tomcat 7.0

   => 기본적인 설정 후에 round trip 방식의 web application 작성

   A. Daynamic Web Application을 작성

   ​	Context Root : Web상에서 프로젝트를 지칭하는 논리적인 이름 => cnn

   ​	url mapping : Web상에서 java program(servlet)을 지칭하기 위한 논리적인 이름 => sample

   ​	Get 방식으로 호출하려고 한다.

   ​	=> Brower의 주소창에 서버쪽 호출 URL을 입력해서 서버쪽 프로그램을 호출

   ​		[HTTP://localhost:8080/cnn.sample](HTTP://localhost:8080/cnn.sample)

   ​	=> Servlet의 doGet method가 호출

   ​			=> 입력받고, 로직처리, 출력처리

   ​	=> Tomcat에 의해서 우리 프로젝트가 서비스 되어있어야 해요!! => deploy

   ​	=> Round Trip 방식의 Web Application 실행



**특징**

- 화면이 refresh된다

  예전에는 별로 문제가 안됬어요~~!

  한창 JSP로 프로그램을 작성!!

- Web browser는 서버가 보내준 내용을 rendering하는 역할

  모든 데이터가 서버 쪽에서 생성되서 네트워크를 통해 데이터가 클라이언트에게 전송되는 구조

- Mobile 시대가 도래…

  데이터 사용량을 최소화 할 필요가 생기게 되었어요!

- 서버 쪽 프로그램과 프론트엔드 프로그램을 따로 작성

  HTML5로 프론트엔드 프로그램을 작성

  Jsp의 사용이 줄어들고 있고 **Ajax** 방식이 많이 사용되고 있음

  프론트엔드( react.js, view.js, angular ) =>javascript

- AJAX 방식으로 프로그램을 작성 / 데이터만 왔다갔다 하는 방식으로

- AJAX( XML을 사용해 서버와의 통신을 가능하게 해주는 javaScript 통신

- 순수 JavaScript AJAX구현이 복잡하고 유지보수가 쉽지 않아요 => jQuery

