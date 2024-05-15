# 연습문제 11번
# (1)
qf(0.95, 6, 8)

# (2)
qf(0.99, 10, 7)

# (3)
qf(0.1, 3, 9)
1/5.24

# (4)
qf(0.025, 12, 7)
1/3.61

# 연습문제 12번
# (1)
pf(3.1, 3, 20)

# (2)
1-pf(4.94, 3, 20)

# (3)
pf(4.94, 3, 20) - pf(3.1, 3, 20)

# 연습문제 14번
# X ~ N(100, 10^2) n=25 Xbar ~ N(100, 2^2) P(97<=Xbar<=102)=?
pnorm(102, 100, 2) - pnorm(97, 100, 2)

# 연습문제 15번
# X ~ N(120, 20^2) n=25 Xbar ~ N(120, 4^2) P(Xbar>=x)=0.05 x?
qnorm(0.95, 120, 4)

# 예제 8-4
x = c(7.5, 6, 5.5, 3, 3.5, 10, 8, 6.5, 7, 4, 3.5, 3, 5, 5, 11, 2, 2.5, 7, 7, 7)

xbar = mean(x)
xbar
n = length(x)
n
s = sd(x)
s
SE = s/sqrt(n)
SE
#z_975 = qnorm(0.975)
#z_975
t_975 = qt(0.975, n-1)
t_975

# 100(1-a) % 오차한계
error = t_975 * SE          #z_975 * SE
error

# 100(1-a) % 신뢰구간 하한
lower = xbar - error
lower

# 100(1-a) % 신뢰구간 상한
upper = xbar + error
upper

# 8-5

n = 3000
x = 1578

phat = x/n
phat

SE = sqrt(phat*(1-phat/n))      # SE : 표준오차

error = qnorm(0.975) * SE       # 100(1-a) % 오차한계
error

# 100(1-a) % 신뢰구간 하한
lower = phat - error
lower

# 100(1-a) % 신뢰구간 상한
upper = phat + error
upper

# 연습문제 2번
scores <- c(35, 19, 40, 35, 51, 41, 27, 23, 39, 21, 41, 31, 46, 51, 34, 37, 36, 55, 52, 32)

# 평균 계산
mean_score <- mean(scores)
mean_score

# 표준편차 계산
sd_score <- sd(scores)
sd_score

# 표준오차 계산
n <- length(scores)
SE <- sd_score / sqrt(n)
SE

# 95% 신뢰구간 계산
error <- qnorm(0.975) * SE       # 100(1-a) % 오차한계
error

# 95% 신뢰구간 하한
lower <- mean_score - error
lower

# 95% 신뢰구간 상한
upper <- mean_score + error
upper

# 연습문제 3번
total_population <- 2000
unemployed <- 165

# 실업률 계산
unemployment_rate <- unemployed / total_population

# 표준오차 계산
standard_error <- sqrt(unemployment_rate * (1 - unemployment_rate) / total_population)

# 95% 신뢰구간 계산
z_value <- 1.96 # 95% 신뢰수준에서의 z 값
margin_of_error <- z_value * standard_error
confidence_interval_lower <- unemployment_rate - margin_of_error
confidence_interval_upper <- unemployment_rate + margin_of_error

# 결과 출력
cat("실업률:", unemployment_rate, "\n")
cat("표준오차:", standard_error, "\n")
cat("95% 신뢰구간:", confidence_interval_lower, "-", confidence_interval_upper, "\n")
cat("95% 오차한계:", margin_of_error, "\n")
