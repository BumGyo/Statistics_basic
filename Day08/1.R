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

