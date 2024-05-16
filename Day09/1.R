x <- c(35, 19, 40, 35, 51, 41, 27, 23, 39, 21, 41, 31, 46, 51, 34, 37, 36, 55, 52, 32)

xbar=mean(x)
xbar
s = sd(x)
s

# 연습문제 5

xbar = 173
s = 3
n = 50

# sigma를 모르는 경우 T #
SE = s/sqrt(n)			# 표준오차
error = qt(0.975, n-1) * SE	# 100(1-a)% 오차한계

LCL = xbar - error		# 하한
LCL
UCL = xbar + error 		# 상한
UCL

# sigma를 아는 경우, 대표본 Z #
SE = s/sqrt(n)
error = qnorm(0.975) * SE

LCL = xbar - error		# 하한
LCL
UCL = xbar + error 		# 상한
UCL

# 연습문제 6 (단, 공의 평균 지름은 정규모집단에 따른다)
xbar = 6.25
s = 0.15
n = 10

# sigma를 모르는 경우 T #

SE = s/sqrt(n)			# 표준오차
error = qt(0.995, n-1) * SE	# 100(1-a)% 오차한계

LCL = xbar - error		# 하한
LCL
UCL = xbar + error 		# 상한
UCL

# 연습문제 7
x -> c(28.5, 25.2, 28.7, 41.0, 29.1, 32.3, 37.7, 39.9, 26.8, 28.8)

xbar = mean(x)
xbar
s = sd(x)
s

n = length(x)
SE <- s / sqrt(n)
SE

error <- qt(0.95, n-1) * SE
error

LCL = xbar - error		# 하한
LCL
UCL = xbar + error 		# 상한
UCL

# 연습문제 8
x -> c(132, 103, 91, 108, 167, 119, 154, 200, 109, 133, 196, 93, 187, 121, 163, 166, 84, 110, 157, 138, 95, 120, 163, 88, 102, 127, 136, 175, 99, 113)

xbar = mean(x)
xbar
s = sd(x)
s

n = length(x)
SE <- s / sqrt(n)
SE

error <- qt(0.975, n-1) * SE
error

LCL = xbar - error		# 하한
LCL
UCL = xbar + error 		# 상한
UCL

# 연습문제 9
phat = 0.2
n = 100

SE = sqrt(phat*(1-phat)/n)	# 표준오차 추정량
error = qnorm(0.975) * SE	# 100(1-a)% 오차한계

LCL = phat - error		# 하한
LCL
UCL = phat + error 		# 상한
UCL

# 연습문제 10
phat = 112/200
n = 200

SE = sqrt(phat*(1-phat)/n)	# 표준오차 추정량
error = qnorm(0.95) * SE	# 100(1-a)% 오차한계

LCL = phat - error		# 하한
LCL
UCL = phat + error 		# 상한
UCL
