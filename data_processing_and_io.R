# 벡터 생성 및 연산
vec <- c(1:20, 30, 44)
cat("Vector: ", vec, "\n")

# 벡터의 컬럼 이름
age <- c(20, 22, 33)
names(age) <- c('james', 'jane', 'peter')
print(age)

# 행렬 생성
m <- matrix(1:10, nrow = 2, byrow = TRUE)
print(m)

# 행렬 연산
cat("Matrix Row Sums: ", rowSums(m), "\n")
cat("Matrix Column Means: ", colMeans(m), "\n")

# 데이터프레임 생성
df <- data.frame(
  no = c(1, 2, 3),
  name = c('홍길동', '이순신', '유관순'),
  score = c(90, 85, 95)
)
print(df)

# 데이터프레임 처리
subset_df <- subset(df, score > 90)
print(subset_df)

# 리스트 생성 및 변환
member <- list(name = c('lee', '이순신'), age = c(35, 25), address = c('미국', '한국'))
print(member)
unlist_member <- unlist(member)
print(unlist_member)

# 데이터 입출력
write.csv(df, 'student_data.csv', row.names = FALSE)
read_df <- read.csv('student_data.csv')
print(read_df)

# 파일 병합
height <- data.frame(id = c(1, 2, 3), h = c(180, 175, 155))
weight <- data.frame(id = c(1, 2), w = c(80, 75))
user <- merge(height, weight, by = "id", all = TRUE)
print(user)
