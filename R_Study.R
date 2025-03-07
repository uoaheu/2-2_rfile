# 📌 R 기초 문법 정리
# 작성자: 01HongNa
# 설명: R 패키지 설치 및 로딩, 자료형, 자료구조, 조건문, 반복문, 입출력, 패키지 사용법

# =======================================
# 1. 패키지 설치 및 로딩
# =======================================
install.packages('stringr')
library(stringr)
require(stringr)

# 패키지 제거 예시
remove.packages('stringr')

# =======================================
# 2. 자료형 (Data Types)
# =======================================
int <- 20  # 숫자형
string <- '홍길동'  # 문자형
boolean <- TRUE  # 논리형
a <- NA  # 결측치

cat("숫자형:", int, " / 문자형:", string, " / 논리형:", boolean, "\n")
cat("무한대:", 100/0, " / NaN:", 0/0, "\n")

# =======================================
# 3. 자료형 확인 및 변환
# =======================================
cat("is.numeric:", is.numeric(int), "\n")
cat("is.character:", is.character(string), "\n")
cat("is.logical:", is.logical(boolean), "\n")
cat("is.na:", is.na(a), "\n")

# 자료형 변환 예시
x <- c(1, 2, '3')
cat("as.numeric:", as.numeric(x), "\n")

# =======================================
# 4. 자료구조 (Data Structures)
# =======================================
# 벡터
vec <- c(1, 2, 3)
cat("벡터:", vec, "\n")

# 리스트
lst <- list(name='홍길동', age=30)
print(lst)

# 매트릭스
mat <- matrix(1:6, nrow=2)
print(mat)

# 데이터프레임
df <- data.frame(id=c(1,2), score=c(90,80))
print(df)

# =======================================
# 5. 벡터 연산 및 처리 함수
# =======================================
x <- c(1, 3, 5, 7)
y <- c(3, 5)

cat("합집합:", union(x, y), "\n")
cat("교집합:", intersect(x, y), "\n")
cat("차집합:", setdiff(x, y), "\n")

# =======================================
# 6. 조건문과 반복문
# =======================================
score <- 85
if (score >= 90) {
  cat("A학점\n")
} else if (score >= 80) {
  cat("B학점\n")
} else {
  cat("C학점\n")
}

for (i in 1:5) {
  cat("반복:", i, "\n")
}

# =======================================
# 7. 사용자 정의 함수
# =======================================
f2 <- function(x=10, y=10) {
  cat("x =", x, ", y =", y, "\n")
}
f2(20, 30)

var_sd <- function(x) {
  var <- sum((x - mean(x))^2) / (length(x) - 1)
  sd <- sqrt(var)
  cat("분산:", var, ", 표준편차:", sd, "\n")
  return(c(var, sd))
}

x <- c(7, 5, 12, 9, 15, 6)
result <- var_sd(x)

# =======================================
# 8. 데이터 입출력 (Input/Output)
# =======================================
write.csv(df, "data/output.csv", row.names=F)
df_in <- read.csv("data/output.csv")
cat("\n📌 CSV 읽기 결과:\n")
print(df_in)

# =======================================
# 9. 문자열 처리 (stringr 패키지)
# =======================================
string <- "hongkildong105lee1002you25강감찬2005"
cat("문자열 길이:", str_length(string), "\n")
cat("특정 위치:", str_sub(string, 26, 28), "\n")
cat("대문자 변환:", str_to_upper(string), "\n")

# 정규 표현식 활용
jumin <- '991212-1234583'
cat("정규표현식 결과:", str_extract_all(jumin, '\\d{6}-[1-4]\\d{6}'), "\n")

# =======================================
# 10. 수학 관련 내장 함수
# =======================================
cat("반올림:", round(23.54), "\n")
cat("누적합:", cumsum(1:4), "\n")
cat("누적곱:", cumprod(1:4), "\n")

# =======================================
# 11. 난수 생성 및 확률 분포
# =======================================
set.seed(123)
n <- 20
r <- rbinom(n, 1, prob=0.5)
cat("이항분포 난수 생성:", r, "\n")

# =======================================
# 12. 데이터 병합
# =======================================
height <- data.frame(id=c(1, 2, 3), h=c(180, 175, 155))
weight <- data.frame(id=c(1, 2), w=c(80, 75))
user <- merge(height, weight, by="id", all=T)
print(user)

# =======================================
# 13. 몬테카를로 시뮬레이션
# =======================================
coin <- function(n) {
  r <- runif(n, 0, 1)
  return(ifelse(r <= 0.5, 0, 1))
}

montaCoin <- function(n) {
  cnt <- 0
  for (i in 1:n) {
    cnt <- cnt + coin(1)
  }
  res <- cnt / n
  return(res)
}

cat("몬테카를로 시뮬레이션:", montaCoin(10000), "\n")

# =======================================
# 14. 마무리
# =======================================
cat("\nR 기초 문법 정리가 완료되었습니다!\n")
