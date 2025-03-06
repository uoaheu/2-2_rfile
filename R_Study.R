# 📌 R 기초 문법 정리
# 작성자: 01HongNa
# 설명: 자료형, 자료구조, 조건문, 반복문, 입출력, 패키지 사용법 정리

# 1. 패키지 설치 및 로딩
install.packages('stringr')
library(stringr)

# 2. 자료형 (Data Types)
int <- 20  # 숫자형
string <- '홍길동'  # 문자형
boolean <- TRUE  # 논리형
cat("숫자형:", int, " / 문자형:", string, " / 논리형:", boolean, "\n")

# 3. 자료구조 (Data Structures)
vec <- c(1, 2, 3)  # 벡터
lst <- list(name='홍길동', age=30)  # 리스트
mat <- matrix(1:6, nrow=2)  # 매트릭스
df <- data.frame(id=c(1,2), score=c(90,80))  # 데이터프레임

cat("\n📌 벡터:", vec, "\n📌 리스트:", lst, "\n📌 매트릭스:\n")
print(mat)
cat("\n📌 데이터프레임:\n")
print(df)

# 4. 조건문과 반복문
score <- 85
if (score >= 90) {
  print("A학점")
} else if (score >= 80) {
  print("B학점")
} else {
  print("C학점")
}

for (i in 1:5) {
  cat("반복:", i, "\n")
}

# 5. 데이터 입출력 (Input/Output)
write.csv(df, "data/output.csv", row.names=F)
df_in <- read.csv("data/output.csv")
cat("\n📌 CSV 읽기 결과:\n")
print(df_in)

# 6. 유용한 함수 예시
cat("\n📌 합계:", sum(1, 2, 3), " / 평균:", mean(c(1, 2, 3)), "\n")
