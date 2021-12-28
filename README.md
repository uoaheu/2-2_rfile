# 2-2_rfile

# R 패키지 설치
install.packages('stringr')

# R 패키지 로딩 / 두가지 방법
library(stringr)
require(stringr)

library(blmd)
require(blmd)
# 차이점 에러가 다르다(require 경고를 띄움)

# R 패키지 제거
remove.packages('stringr')
library(stringr)

# 자료형
int <- 20 # 숫자형
int
string <- '홍길동' # 문자형
string
boolean <- TRUE # 논리형
boolean
a <- NA # 결측치
a
100/0 # 무한대
0/0 # 숫자가 아니다.(NaN)

sum(10,20,30)
sum(10,20,30,NA)
sum(10,20,30,NA, na.rm=T) #na.rm=T : NA 값을 지우고 계산
  

# 자료형 확인
is.numeric(int) # 숫자형 확인
is.integer(int) # 정수형
is.double(int) # 실수형
is.character(string) # 문자형 확인 
is.logical(boolean) # 논리형 확인
is.na(a) # 결측치 확인
is.na(0/0) # 결측치 확인
is.nan(a) # 숫자가 아닌지 확인
is.nan(0/0) # 숫자가 아닌지 확인
is.nan(NA)
if (is.na(a)) print('Missing!!')

# 자료형 변환
x <- c(1,2,'3') 
x # 문자형 
xy <- as.numeric(x) # 숫자형으로 변환
xy
as.character(xy) # 문자형으로 변환

###############################################################################
# 2021.09.08
# 자료형과 자료구조 보기
mode(int)
mode(string)
mode(boolean)
class(int)
class(string)
class(boolean)
# 하나의 값만 보는 것이라면 mode, class 동일 결과값

mat <- matrix(0,2,2)
mat

mode(mat)
class(mat)
mode(array('a', c(2,3)))
class(array('a', c(2,3)))
mode(matrix(0,2,3))
class(matrix(0,2,3))

# 유용한 함수들
help(sum)
?sum

args(sum) # 함수파라미터 보기
example(seq) # 함수 사용 예제 보기
example(mean) # 평균을 구해주는 mean()함수 사용 예시

getwd() # 현재 사용하고 있는 디렉터리
setwd() # 디렉터리 바꾸는 방법

# 3장 자료
# 데이터 자료구조
# vector 객체 생성 c(), seq(), rep()
vec <- 1:20
vec
c(1:20)
c(1:20, 30,44)
c('a','b', 'c')
c('a','b','c', 33, 44) # 벡터는 한가지 데이터 타입만 저장 가능 -> 문자형으로 변환
c('a','b', 'c', vec) # 변수도 가능 / 변수가 숫자형일 때 문자형으로 자동 변환

seq(from=1, to=10, by=2)
seq(1, 10, 2)
rep(x=1:3, times=5) # x를 5번 반복
rep(x=1:3, 5) # rep(x, times, each) / times는 생략 가능
rep(x=1:3, each=2) # 각각 원소를 2번씩 반복
rep(x=1:3, times=2, each=3)

# *** vector 데이터 처리 함수 union(), setdiff(), intersect() ***
x <- c(1,3,5,7)
y <- c(3,5)

union(x,y) # 합집합
intersect(x,y) # 교집합
setdiff(x,y) #차집합(x-y) / 앞에서 뒤에꺼 빼기
setdiff(y,x) 

#*** vector 컬럼 이름***
age <- c(20,22,33)
age
names(age)
names(age) <- c('james', 'jane', 'peter')
age
names(age)
age[1]
age[2]
age[3]
age[1:2]

# vector 데이터 참조
a <- 1:50
a
a[1,2] # 에러
a[c(1,2)] # c()해줘야 한다
a[c(30:45)]
a[30:45] # 연속되는 수 -> c() 안해도 가능
a[c(1,3, 45:50)] # 띄엄띄엄있을시 c()해줘야 한다
a[-1] # -1 = 첫번째 원소를 지워라
a[-c(1,4,5,6,7)] # 1,4,5,6,7 제외하고 출력

v1 <- c(33, -5, 20:23, 12, -2:3)
v1
v1[1]# 첫번째원소 출력
v1[c(2,4)] # 두번째, 네번째 원소 출력
v1[-1] # 첫번째원소 제외하고 출력
v1[-c(2,4)] # 두번째, 네번째 원소 제외하고 출력

# matrix 객체 생성
m <- matrix(c(1:3)) # 열 우선으로 행렬 객체 생성
m
m <- matrix(c(1:10), nrow=2) # 2행을 갖는 행렬
m
m<- matrix(c(1:10), nrow=2, ncol=5)
m
m<- matrix(c(1:10), 2, 5) 
m
m <- matrix(c(1:10), nrow=2, byrow = T) # 행 우선 객체 생성
m 

x <- matrix(1:9, 3,3)
x
colnames(x) <- c('one','two', 'three')
x
rownames(x) <- c(1,2,3)
x
colnames(x) 
rownames(x)

x[1,] # x의 첫번째 행
x[,2] # x의 두번째 열
x[1,2]
x[1,2:3]
x[,3]

mode(x)
class(x)

length(x)
ncol(x) # 열 갯수
nrow(x) # 행 갯수

# *** apply 함수 ***
x
apply(x,1, max) # 1 : 행 적용 / 2 : 열 적용 / 123 -> 행 이름
max(x[1,])
max(x[2,])
max(x[3,])

apply(x,2, max) # 열 기준 최대값
max(x[,1])
max(x[,2])
max(x[,3])


# 번외 / 사용자 정의 함수 
f <- function(x) {x*c(1,2,3)}
f(1)
f(c(2,3,4))

apply(x,1,f)
f(x[1,])
f(x[2,])
f(x[3,])
apply(x,2,f)
f(x[,1])
f(x[,2])
f(x[,3])

################################################################################
#2021.09.13
# 관리자권한 실행 = 패키지 설치 잘 되는 듯

# Array 객체 생성
arr <- array(1:12, c(3,2,2)) # c(3,2,2) => 3행, 2열, 2면
arr
arr[,,1] # 1면
arr[,,2] # 2면
arr[1,1,2] 

mode(arr) # 안에 들어있는 숫자 = numeric / 자료형
class(arr) # 전체 구조 = array / 자료구조

#=================================================================

# List 객체 생성  
list <- list('lee', '이순신', 2, c(1,2,3), matrix(1:6,2,3))
list
# 결과 알아보기 
# [[1]] => 키 값 / [1] "lee" => value 값

# 키 값을 따로 지정하지 않았을 때 => 1,2,3 ... 숫자가 키 값 
list[[1]]
list[[3]]
unlist <- unlist(list) # vector로 변경
unlist

member <- list(name = c('lee', '이순신'), age=c(35,25), address=c('미국','한국'))
member
member[[1]]
member[[1]][2]
member[[2]]
member[[3]]
# 키 값 형태로 value에 접근할 수 있다
member$name # 변수명$키 값 형태로 접근 
member$name[2] # [index]로 특정 value 접근
member$age
member$address

# List 객체 자료 처리 함수 
# lapply(), sapply() 함수
a <- list(1:5, 6:10)
a
lapply(a, max) # 리스트 별로 max값을 나타내라 / l = list
unlist(lapply(a, max)) # 그저 결과만 원할 때
sapply(a, max) # 위와 같은 형태 / s = simple

# do.call 함수
multi_list <- list(c1=list(1,2,3), c2=list(10,20,30))
multi_list # 리스트 안에 리스트가 있는 것
multi_list[[1]]
multi_list[[2]]

do.call(cbind, multi_list)
cbind(multi_list[[1]], multi_list[[2]]) # 위와 동일
# ***

# Data frame 객체 생성
# 1. Vector를 이용
no <- c(1,2,3)
name <- c('hong', 'lee','kim')
pay <- c(150, 250, 300)
vemp <- data.frame(NO = no, Name = name, Pay = pay)
# NO : key / no : value => no 대신 c(1,2,3) 가능
vemp
mode(vemp)
class(vemp)

# 2. Matrix를 이용 / 1번보다 더 많이 이용
m <- matrix(c(1, 'hong', 150,
              2, 'lee', 250,
              3, 'kim', 300), 3,byrow=T) # 행우선
m
memp <- data.frame(m)
memp # dataframe형태
class(m)
class(memp)

# 열이름 지정해주기
colnames(memp) = c('NO', 'Name', 'Pay')
memp

# 3. txt, csv 파일을 이용하여 객체 생성
getwd()
txtemp <- read.table("emp.txt", header=T, sep='')
tetemp <- read.csv('emp.csv', header = T)
txtemp
class(txtemp)

# data frame 처리함수
df <- data.frame(x = c(1:5), y = seq(2, 10, 2), z = c('a', 'b', 'c', 'd', 'e'))
df
str(df) # 전체적인 structure(구조)
dim(df) # dimention (크기) / 행 5, 열 3
class(df)
ncol(df)
nrow(df)
colnames(df)
rownames(df) # 따로 지정하지 않았으므로 기본 숫자로 지정
summary(df)
apply(df[,1:2],2, sum) # df[,1:2] => 첫번째랑 두번째 열만 / 숫자니까

# subset 함수
df
x1 <- subset(df, x>=3)  # subset : 부분집합
x1
x2 <- subset(df, x>=3&y<9) # & : 이거나(and)
x2

# data 병합
height <- data.frame(id = c(1,2,3), h=c(180,175,155))
weight <- data.frame(id = c(1,2), w = c(80, 75))
user <- merge(height, weight, by= "id")
user
# merge : 두개의 데이터프레임(테이블)을 하나로 합치는 함수
# by : by가 공통될 때 하나로 만들기
# 위의 id와 같이 같은 변수가 아닐 경우
# by.x='id', by.y='~' 라고 해줘야 한다
# 전체 모습을 보고 싶을 때 => all=T
user1 <- merge(height, weight, by= "id", all=T)
# all / all.x / all.y ... 사용해보기
user1

#####################################################################
# 2021.09.15

# stringr 패키지
install.packages('stringr')
library(stringr)

# 문자열 추출(정규표현식 활용)
str_extract("홍길동35이순신45유관순25", "[0-9]{2}")
# [0-9]{2} : 1부터 9까지의 숫자가 두개 반복
str_extract_all("홍길동35이순신45유관순25", "[0-9]{2}")
# _all 을 붙여주면 조건에 만족하는 모든 값 추출

# 1. 반복수 관련 정규 표현식
string <- 'hongkildong105lee1002you25강감찬2005'
string
str_extract_all(string, "[a-z]{3}")
str_extract_all(string, "[a-z]{3,}")
# "[a-z]{3,}" : 영문자 3개 이상 연속된 값 추출
str_extract_all(string, "[a-z]{3,5}")
# "[a-z]{3,5}" : 영문자 3개~5개 연속된 값 추출

# 2. 문자와 숫자 관련 정규 표현식
str_extract_all(string, 'hong')
str_extract_all(string, '[가-힣]{3}')
str_extract_all(string, '[0-9]{4}')

# 3. 특정문자열 제외 정규 표현식 
str_extract_all(string, '[^a-z]{3}')
# 영문자가 아닌 3개 이상 연속된 값 추출
str_extract_all(string, '[^0-9]{3}')
# ^ 표시 : 제외

# 4. 한개의 숫자나 단어 관련 정규 표현식
jumin <- '991212-1234583'
str_extract_all(jumin, '[0-9]{6}-[1-4][0-9]{6}')
# '[0-9]{6}-[1-4][0-9]{6}'
# => 6자리 연속 숫자 + '-'표시 + 1~4 중 숫자 하나 + 6자리 연속 숫자
str_extract_all(jumin, '\\d{6}-[1-4]\\d{6}')
# \\d = [0-9]
str_extract_all(string, "[a-z]{10,}")
str_extract_all(string, "\\w{10,}") 
# \\w : 영어+한글+숫자
str_extract_all(string, "[a-z0-9가-힣]{10,}") 

# 문자열 연산
string <- "honfkildong105lee102you25강감찬2005"
string

str_length(string) # nchar(string)
str_locate(string, '강감찬') # regexpr('강감찬', string)
str_sub(string, 26, 28) # substring(string, 26,28)
str_to_upper(string) # toupper(string)
str_to_lower(string) # tolower(string)

string_rep <- str_replace(string, "honfkildong105", "홍길동35")
string_rep
string_rep <- str_replace(string_rep, 'lee102', ',이순신55')
string_rep
string_rep <- str_replace(string_rep, 'you25', ',이순신33,')
string_rep
string_c <- str_c(string_rep, ',강감찬55')
string_c

# 문자열 분리 및 결함
string_sp <- unlist(str_split(string_c, ","))
# str_split(string_c, ",")
class(string_sp)
string_sp
string_sp[2]

string_join <- paste(string_sp, collapse = ',')
string_join

number = 1:22
paste('file_chr', number, ".txt")
paste('file_chr', number, ".txt", sep="") # 공백 X
paste0('file_chr', number, ".txt") # sep="" 와 paste0 같은 결과 값

########################################################################

# 2021.09.22
# 데이터 입출력 방법
## 데이터 불러오기
# 1. 키보드 입력 : scan(), edit()
# 2. 로컬 파일 읽기 : read.table(), read.csv(), fread(), read.xlsx()
# 3. 인터넷에서 파일 가져오기 : read.csv()
# 4. 웹문서 가져오기 : readHTMLTable()
## 데이터 저장하기
# 1. 화면출력: cat(), print()
# 2. 파일저장: sink(), write.table(), write.csv(), fwrite(), write.xlsx()


# 키보드로 입력 / scan() , edit()
num <- scan() # scan() : 숫자만 입력 가능 / 기본적으로 what = double()
num 

name <- scan(what = character())
name
? scan

df = data.frame()
df = edit(df) # 데이터 편집기 생성
df

# 화면 출력
x <- 10 ; y<- 20
x
y
z <- x*y
cat('x*y=',x*y, '; ', 'x/y=',x/y, sep='')

print(z)

# 로컬 파일 읽기
getwd()
setwd()
student <- read.table('student.txt')
student
colnames(student) <- c('번호', '이름', '키', '몸무게')
student

# student1.txt 파일 => 컬럼 이름이 이미 파일 속에 존재(첫번째 행에 존재)
# header = T : 첫번째 행을 헤더로써 인식
student1 <- read.table('student1.txt', header=T,fileEncoding = "euc-kr")
student1 

# student2.txt 파일 => ;으로 구별되어있다 
# header=T / sep=';' : ;으로 구분하겠다
student2 <- read.table('student2.txt', header=T, sep=';',fileEncoding = "euc-kr")
student2

# student3.txt 파일 => 결측값이 - 으로 표시되어 있다
# header=T / na.strings='-' : - 대신 NA로 결측값 표시
student3 <- read.table('student3.txt', header=T, na.strings='-', fileEncoding = "euc-kr")
student3

# student4.txt 파일 => ,로 구별 / -로 결측값 표시
# header=T / sep=',', na.strings='-' 
student4 <- read.table('student4.txt', header=T, sep=',', na.strings='-',fileEncoding = "euc-kr")
student4 <- read.csv('student4.txt', na.strings='-', fileEncoding = "euc-kr")
# read.csv : header=T, sep=','이 기본적으로 포함되어 있다
# na.strings='-' 만 써주면 된다
student4

# 로컬 파일 읽기
install.packages('data.table')
library(data.table)
stock <- fread('stock.csv')
stock
stock <- read.csv('stock.csv')
stock
dim(stock)

# 엑셀 파일 읽기
# 엑셀 파일 읽으려면 두개 패키지 설치 필요
install.packages('xlsx')
install.packages('rJava')
# 자바 JRE 설치(jre-8ㅕu301-windows-x.64.exe)
# sys.setenv(JAVA_HOME='c:\\Program Files\\JAVA\\jre1.8.0_301') 여기에 설치되어있을 거임
# 
library(xlsx)
library(rJava)
studentex <- read.xlsx('studentexcel.xlsx', sheetIndex = 1) # 한글깨질 시 encoding = 'UTF-8'
studentex

# 로컬 파일 저장
student
write.table(student, 'student_new.txt') 
# row이름과 따옴표를 없애줘야한다
write.table(student, 'student_new.txt', row.names=F, quote=F)

student4
write.csv(student4, 'student4_new.csv',row.names=F, quote=F)
student4_new <- read.csv('student4_new.csv', na.strings = "-")
student4_new

fwrite(stock, 'stock_new.csv')

studentex
write.xlsx(studentex, 'studentex_new.xlsx', row.names=F)

# 인터넷에서 파일 읽기
http://databank.worldbank.org/data/download/GDP.csv
GDP_ranking <- read.csv('http://databank.worldbank.org/data/download/GDP.csv', skip=3)[2:206, -c(3,6)]
head(GDP_ranking)
names(GDP_ranking) = c('Code', 'Ranking', 'Nation', 'GDP')

GDP_ranking$GDP
library(stringr)
num_gdp = str_replace_all(GDP_ranking$GDP, ',',"")
# , -> 공백 바꾸기
num_gdp = as.numeric(str_replace_all(GDP_ranking$GDP, ',',""))
# 문자 -> 숫자 바꾸기
num_gdp
GDP_ranking$GDP <- num_gdp
head(GDP_ranking)

GDP_ranking15 <- head(GDP_ranking, 15)
barplot(GDP_ranking15$GDP, col=rainbow(15), las=2, cex.names=0.6, names.arg = GDP_ranking15$Nation)
# las =2 : x축 이름 가로세로 / cex.names= x축 변수 이름 크기

#####################################################################################################

# 2021.09.27
# 지난 수업 이어서
# 웹문서 읽기
install.packages("XML") # XML 패키지 설치
install.packages("httr") # httr 패키지 설치
library(XML)
library(httr)

url <- "http://ssti.org/blog/useful-stats-capita-personal-income-state-2010-2015"

get_url <- GET(url) # httr 제공하는 함수로 HTML 소스를 가져 옴
get_url

get_url$content # 16 진수로 내용을 보여줌
con <- rawToChar(get_url$content) # 바이너리 소스를 html 태그로 변환  
readHTMLTable(con)

library(stringr)
str_locate_all(con, '<table')
str_sub(con, 38388, 38593)#해당위치 뽑아내기
str_sub(con, 39258, 39463)
readHTMLTable(con)

html_cont <- readHTMLTable(con)
class(html_cont)
html_cont <- readHTMLTable(rawToChar(get_url$content), stringsAsFactors = F) # Extracts data from HTML tables in an HTML document
html_cont <- as.data.frame(html_cont)
names(html_cont) <- c("State",'y2010','y2011','y2012','y2013','y2014','y2015')
head(html_cont)


# 오늘 수업 시작 _____________________________________
# 조건문
# if문 only
score <- 85
result <-'B'
if (score>80) result <-"A"
# if (score>80) { result <-"A" }    : 한 줄이면 {} 안써도 ㄱㅊ
score  
result
cat('당신의 학점은 ', result, '(점수:', score,')입니다.', sep='')

# if ~ else if 문
score <- 81
if (score >= 90) {result = 'A'
} else if (score >= 80) {result = 'B'
} else if (score >= 70) {result = 'C'
} else if (score >= 60) {result = 'D'
} else {result = 'F'}
cat('당신의 학점은 ', result, '(점수:', score, ')입니다.', sep='')

# ifelse 문 : 값이 벡터일 때, 자주 사용
score <- c(100, 85, 85, 70)
names(score) <- c('James', 'Jane', 'Thomas', 'Maria')
score
credit <- ifelse(score>=90, 'A', 'B') # (조건, 참, 거짓)
credit

# switch 문 : 활용도 낮음
input <- 'name'
switch(input, id='hong', pwd='1234', age=40, name='James')

# which 문 : 유용 !!!!!!!!!!!!!!
no <- 1:5
name <- c('James', 'Jane', 'Thomas', 'Maria', 'Tom')
score <- c(100, 80, 90, 95, 30)
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
exam$학번
which(exam$학번==3) # 해당 인덱스 값이 나온다
exam[which(exam$학번==3),] # 학번=3인 학생 정보 전체 출력
exam[3,] # 위와 같은 코드

# 반복문
d <- numeric()
for (i in 1:10) {
  d[i] <- i*10
  cat(i, d[i], "\n")        # \n : enter 효과
}

# 짝수값/홀수값 출력
for (i in 1:10){ 
  if (i %% 2 == 0) {
    cat(i, " ")
  }   # %% : 나머지 / " " : 한번 출력 후 띄어쓰기 / "\n" : 한번 출력 후 엔터
}
 
for (i in 1:10){
  if (i %% 2 == 0) {next
    } else {cat(i, " ")
  }    # 위에 두줄 = if (i %% 2 == 1)
}

score <- c(50, 80)
name <- c('James', 'Jane')
i <- 1
for (s in score) {
  cat(name[i], '점수', s, '\n')
  i <- i+1
}

# while 문 : (조건)이 TRUE일 때 까지 반복
i <- 0
while(i<10) {
  i <- i+1
  print(i)
}

# 2021.09.29
# 함수(function)

# R 내장함수
# 행, 열 합계 및 평균 구하기
install.packages('RSADBE')
library(RSADBE)
data('Bug_Metrics_Software')
bug <- Bug_Metrics_Software
bug
class(bug)
bug[,,1] # 첫번째
bug[,,2] # 두번째

class(bug[,,1])
rowSums(bug[,,1]) # 첫번째 테이블의 행들의 합
apply(bug[,,1], 1, sum) # 위와 동일 / 1 = 행, 2 = 열

rowMeans(bug[,,1])
apply(bug[,,1], 1, mean)

colSums(bug[,,1])
apply(bug[,,1], 2, sum)

colMeans(bug[,,1])
apply(bug[,,1], 2, mean)

# 난수 생성 및 확률 분포
# 정규분포 (Normal distribution)
n <- 1000 # 난수 갯수
r <- rnorm(n, mean = 0, sd=1) # random normal
# r <- rnorm(n, 0, 1)
length(r) 
hist(r, col = 'light blue', main = 'Histogram of random numbers')

# 균등분포 (Uniform distribution)
n <- 1000
r2 <- runif(n, min=0, max=1) # random uniform
# r2 <- runif(n, 0, 1) 위와 동일
r2
hist(r2, col='pink')

# 이항분포 (Binomial distribution)
? rbinom
set.seed(123) # random number 순서가 동일하게 나온다
# 하나 질문) 왜 123 을 넣어야하지?
n <- 20
rbinom(n, 1, prob = 0.5) # 특정사건이 일어날 횟수의 분포
rbinom(n, 2, 0.5)
rbinom(n, 10, 0.5)

# 사용자 정의 함수
# 1. 매개변수가 없는 함수
# function() 키워드 사용
f1 <- function(){
  cat('매개변수가 없는 함수!')
}
f1()

# 매개변수가 있는 함수
f2 <- function(x,y) {
  cat('x=', x, ', y=', y, sep='')
}
f2(10,20)
f2 <- function(x=10,y=10) {    # 매개변수에 값 지정 가능 
  cat('x=', x, ', y=', y, sep='')
}
f2()

# 리턴값이 있는 함수
f3 <- function(x,y) {
  prod <- x*y
  return(prod)
}
prod <- f3(10,20)
prod

# 분산과 표준편차를 구하는 함수
x <- c(7, 5, 12, 9, 15, 6)
x
var(x)
sd(x) # sqrt(var(x))

var_sd <- function(x) {
  var <- sum((x-mean(x))^2) / (length(x)-1)
  sd <- sqrt(var)
  cat('var=', var, ', sd=', sd, sep='')
  res <- c(var, sd)
  return(res)
}
result <- var_sd(x) 
result
 
# 구구단 출력 함수
gugu <- function(i) {
  for (x in i) {
    cat('****', x, '단****', '\n', sep='')
    for (y in 1:9) {
      cat(x, '*', y, '=', x*y, '\n', sep='')
    }
    cat('**********\n')
  }
}
gugu(3)
gugu(3:6)

# 동전 앞/뒤 난수 확률 분포 함수
coin <- function(n) {    # n:시행횟수
  r <- runif(n, 0, 1)
  res <- numeric()
  for (i in 1:n) {
    if(r[i] <= 0.5) {res[i] <- 0
    } else (res[i] <- 1)
  }
  return(res)
}
coin(10)

coin <- function(n) {    # n:시행횟수
  r <- runif(n, 0, 1)
  res <- ifelse(r <= 0.5, 0, 1)
  return(res)
}
coin(10)

# 몬테카를로 시뮬레이션
montaCoin <- function(n) {
  cnt <- 0
  for (i in 1:n) {
    cnt <- cnt+coin(1)     # coin : 동전 앞/뒤 확률분포
  }
  res <- cnt/n
  return(res)
}
montaCoin(10)
montaCoin(100)
montaCoin(1000)
montaCoin(10000)
# 점점 0.5에 가까워지는 것을 알 수 있다

# 수학관련 내장함수
ceiling(0.5)
floor(234.3)
round(23.54)
factorial(5)
x <- c(1:10)
which.min(x) ; which.max(x)
prod(1:4) # 1*2*3*4
cumsum(1:4) # 누적합
cumprod(1:4) # 누적곱
cos(3.14)
log(100)
log10(10)

# 행렬연산 내장함수
# x %*% y  / 두 행렬의 곱
# c%in% y  / c가 집합 y의 원소인지 테스트 *** 많이 사용
y <- 1:10
c =2
c%in% y
b=13
b%in%y



