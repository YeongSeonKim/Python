#### 2019 - 07 - 05 (8일차)

# 빅데이터 분석_ Python 데이터 전처리 

[참고 사이트](https://wikidocs.net/16565)



## 3가지 형태의 데이터 파일을 이용

1. CSV (comma seperated value) : “ , ” 로 데이터를 구분해서 구분된 데이터를 전송, 이용하는 방법

   Ex ) 홍길동, 서울, 30, 김길동, 인천, 20, 박길동, 제주, 50 ……

   장점 ) 

   부가적인 데이터가 작다.

   => 대용량의 데이터를 처리하는데 적합

   단점 )

   데이터를 사용하려면 기본적인 파서 프로그램을 작성

   데이터의 형태가 변형이 되면 프로그램 자체를 수정

   => 유지보수의 문제

   ​		구조적인 데이터를 표현하기에 적합하지 않다.

2. XML : 마크업 태그를 이용해서 데이터를 표현하는 방식

   Ex ) <name>홍길동</name><address>서울</address><age>30</age>….

​      장점 ) 

​      제공되는 파서를 이용해서 데이터 처리를 손쉽게 할 수 있다. 구조적인 데이터를 표현하기에 적합.

​      단점 ) 

​      부가적인 데이터가 너무 크다.

​		=> 이게 처음에는 문제가 되지 않았다. 하지만 모바일로 넘어오면서 문제가 발생되기 시작함.

모바일로 넘어오면서 사이즈(용량)를 줄이기 위해서 많은 노력을 함.

3. JSON : JavaScript Object Notation => 문자열기반

   Ex ) { “name” : “홍길동”, “address” : “서울”, “age” : 30, … } 

   자바스크립트에서는 객체형태, 파이썬에서는 _형태

​      장점 )

​      구조적 데이터 처리에 적합

​      XML에 비해 부가적인 데이터가 적다.

​      단점 )

​      CVS방식에 비해 부가적인 데이터가 있다.

```python
# CVS파일을 읽어들여서 pandas의 DataFrame으로 표현
import numpy as np
import pandas as pd

df = pd.read_csv("./data/movielens/ratings.csv")

#display(df)

# 실행시키면 in[*] : 실행중 의미

## DataFrame에 들어있는 데이터를 JSON형태로 저장하기
# new_df = df.head() # 상위 5개만 출력
# display(new_df)
# new_df.to_json("./data/movielens/ratings.json") # .to_json(적절한 파일이름과 경로) :  json파일로 저장
df.to_json("./data/movielens/ratings.json") 
display(df)
```

```python
# JSON파일을 읽어들여서 DataFrame으로 표현
import numpy as np
import pandas as pd
import json # json 내장모듈 - 따로 설치 필요없음

file = open("./data/movielens/ratings.json","r") 
#open() : 파이썬이 가지고 있는 파일io에 대한 함수 , r : read
 
my_dict = json.load(file) # load() :파일로부터 데이터를 로드하는 함수
file.close()

df = pd.DataFrame(my_dict)
display(df)
# index가 0 1 10 100 1000 으로 나오는 이유 : JSON이 문자열기반이기 떄문
```

```python
## pandas의 DataFrame의 제어
import numpy as np
import pandas as pd

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

# data의 columns와 index의 옵션들의 이름을 변경 할수 있다.
df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 ) 
display(df)

# Nan : 숫자가 아님 / columns=[]에 명시하지않으면 값이 출력되지 않고 잘못입력하면 nan이뜬다.

# DataFrame은 기본적인 분석함수를 제공 : describe()
display(df.describe())
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 ) 
display(df)
## DataFrame에서 특정 column만 추출
## 컬럼 1개만 들고오면 => Series 형태으로 출력
# display(df["이름"])
# year = df["학년"] # year => Series => View로 가져온다. 원본형태는 그래로 데이터를 공유
year = df["학년"].copy() # View가 아닌 복사본을 이용하려면 .copy() 사용
year[0] = 100
display(year)
display(df)
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 ) 
### 2개 이상의 컬럼을 추출하려면?
# display(df["이름","학년"]) # Error

### Fancy indexing 이용 하면됨!
## 인덱싱하는 부분에 인덱스 배열을 이용하는 indexing방법
display(df[["학과","이름"]]) # 하나만 series로 추출, 두개이상은 DataFraome이 추출된다.
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
## 컬럼의 값을 수정하려면?
# df["학년"] = 4 # 스칼라
# df["학년"] =[1,1,2,2] # 리스트
df["학년"] = np.array([1,1,3,3]) # numpy
display(df)
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
## 기존에 없는 새로운 컬럼을 추가하려면?
display(df)
# df["나이"] = [20,21,23,None] # 개수를 잘 맞춰줘야함
# df["나이"] = [20,21,23,np.nan] # 일반적으로 np.nan를 사용한다.
# df["나이"] = pd.Series([20,21,23,24], 
#                index=["one","two","three","four"])
# 값이 NaN으로 나온다. => dataframe의 index와 Series의 index가 같아야함. 

df["나이"] = pd.Series([20,21,24], 
                      index=["one","two","four"])
display(df)
# 값을 모를 때는 NaN을 이용해서 값을 채운다.
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

## 기존에 없는 새로운 컬럼을 추가하려면?
## 장학금여부 라는 컬럼을 추가
df["장학금 여부"] = df["학점"] > 3.0

display(df) # 값이 true, flase 로 떯어진다.
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

## 컬럼을 삭제하려면?  
# del df["학점"] #  del 키워드 / 사용학점 컬럼을 삭제
# 실제로는 이렇게 사용하지 않는다. 다른 방법 사용!!
# display(df)
# 컬럼을 삭제하는 일반적인 방법 
# => drop("삭제할컬럼명",axis=,inplace=) 함수 사용
df.drop("학점", axis = 1,inplace=True) 
# drop()은 컬럼을 지우는지 행을지우는지 명시해줘야함 , 
# 축 axis=0: 행방향 / axis=1 :열방향
# inplace=True => 원본삭제, 리턴X
display(df)

new_df = df.drop("학점", axis = 1,inplace=False) 
display(df)
display(new_df)

##################################
## DataFrame의 컬럼을 제어하기 위한 CRUD 작업
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

## 특정 row(recode) indexing
# display(df[0]) # index 번호로 row를 선택
# display(df["one"]) # index 번호로 row를 선택
## => index특정 번호로 특정 row를 선택하는거 안됨 /숫자, 문자 index 둘다 안됨
## 하지만 슬라이싱은 가능
display(df[0:1]) # 슬라이싱했기 떄문에 DataFrame으로 결과나옴
display(df[:-1])
display(df["one":"three"])
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

## 특정 row(recode) indexing
display(df[0:1]) # df["~~~"] => 컬럼 제어할때


## 일반적으로 행을 제어할때 
# df.loc[0] # 0번째 행을 숫자로 indexing 하려는 의미지만 사용할수 없다!

display(df.loc["one"])  # 문자로 indexing 가능          
# index 기반으로 indexing은 가능
# 1개의 행을 선택하는 것이기 때문에 Series로 리턴
display(df.loc["one":"three"]) # slicing
display(df.loc[["one","three"]]) # Fancy indexing
# loc 사용 시 컬럼에 대한 indexing도 할 수 있다.
display(df.loc["one":"three","이름":"학년"])
display(df.loc["one":"three",["이름","학점"]])

# 지정해서 컬럼의 정보를 알고 싶을 때 : df.loc[] 사용
```

```python
import numpy as np
import pandas as pd
import warnings

#  warnoing을 출력하지 않기 위한 설정
warnings.filterwarnings(action="ignore") # ignore => off
# warnings.filterwarnings(action="default") # default => on

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

## 특정 row(recode) indexing

## 새로운 행을 추가하려면 어떻게 하나?
df.loc["five",:] = ["물리","유관순",2,3.5] # 어떤 데이터를 추가할지 명시해야함
display(df)

# row를 삭제 하려면?
# 행삭제 axis=0 을 줘야함
# df.drop("one", axis=0, inplace=True)
df.drop(["one","three"], axis=0, inplace=True) # Fancy indexing
display(df)
```

```python
## 문제

import numpy as np
import pandas as pd
import warnings


warnings.filterwarnings(action="ignore")

data = {"이름" : ["홍길동","강감찬","이순신","신사임당"],
        "학과" : ["컴퓨터","경영","철학","미술"],
        "학년" : [1,3,2,4],
        "학점" : [3.1, 2.9, 4.5, 3.9]
       }

df = pd.DataFrame(data, columns=["학과","이름","학년","학점"],
                  index=["one","two","three","four"]
                 )
display(df)

df["이름"] == "강감찬" ## boolean mask가 생성
# 1. 이름이 '강감찬'인 사람을 찾아서 이름과 학점을 DataFrame으로 출력
# display(df.loc["행", "열"]) 행 : boolean indexing
display(df.loc[df["이름"] == "강감찬",["이름","학점"]])

# 2. 학점이 2.5초과 3.5미만 인 사람을 찾아서 학과와 이름 출력
(df["학점"] > 2.5) & (df["학점"] < 3.5)
display(df.loc[(df["학점"] > 2.5) & (df["학점"] < 3.5),["학과","이름"]])
# 3. Grade라는 컬럼을 추가한 후 학점이 4.0 이상인 사람을 찾아
#    해당 사람만 Grade를 "A"로 설정
df["Grade"] = pd.Series([])
display(df)
df["학점"] >= 4.0
df.loc[df["학점"] >= 4.0, "Grade"] = "A"
display(df)
```

```python
# DataFrame 조작을 위해 간단한 DataFrame을 생성
# 난수의 재연을 위해 seed값을 고정
# 사용하는 DataFrame 의 value값은 [0,10) 범위의 난수형 정수
                                # 0이상 10미만 [ : 이상 , ) :미만
# 균등분포에서 추출해서 사용
# 6행 4열짜리 DataFrame을 생성 -> tuple로 생성

import numpy as np
import pandas as pd

np.random.seed(10) # 초기화값 고정
df = pd.DataFrame(np.random.randint(0,10,(6,4)))
display(df)

# 컬럼이랑 인덱스 수정
# 컬럼 : ["A","B","C","D"]
# index : 날짜를 이용 ( 2019-01-01 부터 하루씩 증가)

df.columns = ["A","B","C","D"]
# df.index = pd.date_range("20190101","20190106") 
df.index = pd.date_range("20190101",periods=6)  # 타임델타사용해도 상관없지만 pandas에 내장되어있는 date_range 이용
display(df)

# NaN을 포함하는 새로운 컬럼 "E" 를 추가
# [7, np.nan, 4, np.nan, 2, np.nan]
df["E"] = [7, np.nan, 4, np.nan, 2, np.nan]
display(df)

#######################
# 결측값 처리 / 결측 : 잘못된 측정값
"""
NaN이 포함된 해당 데이터부분을 지울수도 있는데...
지우면 데이터가 몇개 안남음 => 분석,예측이 불가능
NaN을 다른 값으로 대체해서 사용해야함
pandas로 데이터 전처리 해줘야한다!
"""
#######################
## 데이터 처리 할때 제일먼저 하는 일!!!
# 1. 결측값을 제거( NaN이 포함된 row를 제거)
# df.dropna(how="any", inplace=True) 
# how="any" => nan로 지정되있는거 다지우라는 의미
# inplace=True => 원본유지
# display(df)

# 결측값을 다른 값으로 대체 : fillna(value=)
# df.fillna(value=0 , inplace=True) # nan값을 찾아서 0으로 변경
# display(df)

# 결측값을 찾기위한 boolean mask :isnull()
# display(df.isnull())

## 간단한 예제
## "E" column의 값이 NaN인 모든 row를 찾고 해당 row의 모든 
##  columns의 값을 출력

# df["E"] ,isnull()=True
display(df.loc[df["E"].isnull()==True])
```

```python
## 평균(mean) : 수학적 확률의 기댓값
#              어떤 사건을 무한히 반복했을 떄 얻을 수 있는 평균으로서 기대할 수 있는 값.(기대값)

## 편차(deviation) : 확률변수 X와 평균값의 차이
#                   데이터의 흩어진 정도를 수치화 하기에는적합하지 않다.
#                   => 편차의 합은 항상 0이기 때문에

## 분산(Variance) : 데이터의 흩어진 정도를 알기 위해서 사용되는 편차의 제곱의 평균
#                   제곱을 사용했기 때문에 단위표현이 애매해지는 경우가 존재

## 표준편차(standard deviation) : 분산의 제곱근

# numpy를 이용하면 위의 것들은 쉽게 구할 수 있다.

## 공분산(covariance) : 두개의 확률변수에 대한 관게를 보여주는 값
# 두개의 확률변수에 대한 공분산값이 양수
# => 하나의 확률변수가 증가할 때 다른 확률변수도 증가하는 경향이 있다. ex) 삼성전자 주식이 오르면 코스피도 오른다.
# 두개의 확률변수에 대한 공분산값이 음수
# 공분산값이 0 :  두 데이터는 독립.
# 연관이 있다는 파악할수는 있는데 얼마나의 강도를 받는지를 알수 없다. 밀접한관계는 알수 없다.

## 상관관계(corelation) : 두 대상이 서로 연관성이 있다고 추측되는 관계
# ex) 성적 vs 자존감 , 온라인 게임시간 vs 폭력성 => 수치적관계를 통해 상관관계가 있다 강도가약하다 강하다를 알수 있다.

## 상관계수(corelation coefficient) : -1과 1사이의 실수 
# => 절대값이 0에 가까워질수록 두대상이 연관성이 없다고 판단, 1에 가까워질수록 밀접한 연관이 있다고 판단.

## 상관관계는 인과관계를 설명할 수 없다!!!!
```

