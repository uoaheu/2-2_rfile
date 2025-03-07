# 패키지 설치 및 로딩
install.packages('stringr')
install.packages('blmd')
library(stringr)
library(blmd)

# 패키지 제거 예시
remove.packages('stringr')
library(stringr)

# 기본 자료형
int <- 20
string <- '홍길동'
boolean <- TRUE
a <- NA

# 자료형 확인
cat("Is Numeric: ", is.numeric(int), "\n")
cat("Is Character: ", is.character(string), "\n")
cat("Is Logical: ", is.logical(boolean), "\n")
cat("Is NA: ", is.na(a), "\n")

# 결측치 처리
cat("Sum (with NA removed): ", sum(10, 20, 30, NA, na.rm = TRUE), "\n")

# 자료형 변환
x <- c(1, 2, '3')
xy <- as.numeric(x)
cat("Converted to Numeric: ", xy, "\n")

# mode와 class 비교
cat("Mode of int: ", mode(int), "\n")
cat("Class of int: ", class(int), "\n")

# 문자열 처리
string <- "honfkildong105lee102you25강감찬2005"
cat("String Length: ", str_length(string), "\n")
cat("Extract Numbers: ", str_extract_all(string, "[0-9]{2}"), "\n")

# 정규 표현식 활용
cat("Extract Korean Names: ", str_extract_all(string, "[가-힣]{3}"), "\n")

# 조건문 사용 예시
score <- 85
if (score > 80) {
  cat("A Grade\n")
} else {
  cat("B Grade\n")
}

# 반복문 예시
for (i in 1:5) {
  cat("Number: ", i, "\n")
}

# 도움말 및 유용한 함수
help(sum)
args(sum)
example(seq)
