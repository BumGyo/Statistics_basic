# 연습문제 12(152p)
x = c(38.0, 37.5, 38.9, 40.0, 38.1, 35.7, 38.2, 37.7, 35.9, 36.8, 37.8)

n = length(x)
xbar = mean(x)
s2 = var(x)
s = sd(x)
SE = s/sqrt(n)
error = qt(0.975, n-1)*SE

# 모평균에 대한 95% 신뢰구간

lower = xbar - error
lower
upper = xbar + error
upper

# 모분산에 대한 90% 신뢰구간

chi1 = qchisq(0.05, n-1)
chi1
chi2 = qchisq(0.95, n-1)
chi2

lower_chi = (n-1) * s2/chi2
lower_chi
upper_chi = (n-1) * s2/chi1
upper_chi

# 연습문제 13	sigma = 100, d = 20
n = (qnorm(0.975) * 100 / 20)^2
# s = 100, n = 20, d = 20
n = (qt(0.975, n-1) * 100 / 20)^2
n

# 연습문제 14	d = 0.05, 98%
n = qnorm(0.99)^2 / (4 * 0.05^2)
n
n = qnorm(0.975)^2 / (4 * 0.031^2)
n

# 연습문제 15


# 172p	sigma^2 = 3.1, 	H0 = mu0  = 87		H1 = mu0 < 87	alpha = 0.05
x = c(89, 88, 86, 82, 84, 85, 80, 84, 91, 86, 87, 85, 78, 85, 81, 83, 86, 82, 83, 85)

n = length(x)
xbar = mean(x)
sigma = sqrt(3.1)
SE = sigma / sqrt(n)
zalpha = qnorm(0.05)

mu0 = 87
z0 = (xbar - mu0) / (sigma/sqrt(n))		# 검정통계량
z0

zalpha

# 173p	T