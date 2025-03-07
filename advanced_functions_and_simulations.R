# 사용자 정의 함수 - 구구단 출력
gugu <- function(n) {
  for (i in 1:9) {
    cat(n, "*", i, "=", n * i, "\n")
  }
}
gugu(3)

# 평균 및 분산 함수
calc_stats <- function(x) {
  var_val <- var(x)
  sd_val <- sd(x)
  return(c(Variance = var_val, SD = sd_val))
}

x <- c(7, 5, 12, 9, 15, 6)
result <- calc_stats(x)
cat("Variance and SD:\n")
print(result)

# 몬테카를로 시뮬레이션
coin <- function(n) {
  res <- ifelse(runif(n) <= 0.5, 0, 1)
  return(res)
}

montaCoin <- function(n) {
  cnt <- sum(coin(n))
  return(cnt / n)
}

cat("Monte Carlo Result:", montaCoin(10000), "\n")

# 확률 분포 생성
set.seed(123)
norm_data <- rnorm(1000, mean = 0, sd = 1)
hist(norm_data, col = 'light blue', main = 'Normal Distribution')

# 이항 분포 생성
binom_data <- rbinom(20, 10, 0.5)
cat("Binomial Distribution:", binom_data, "\n")

# 사용자 정의 함수 - 동전 던지기
coin_flip <- function(n) {
  results <- sample(c("Head", "Tail"), size = n, replace = TRUE)
  cat("Coin Flip Results:\n")
  print(results)
}
coin_flip(10)
