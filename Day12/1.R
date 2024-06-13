x = c(105, 108, 86, 103, 104, 107, 124, 105)
y = c(89, 92, 84, 97, 103, 107, 111, 97, 101, 106)

x
y

m = length(x)
m

n = length(y)
n

F0 = var(x)/var(y)			# 분산비
F0

falpha = qf(0.95, m-1, n-1)	# f_alpha : 임계치
falpha

pval = 1-pf(F0, m-1, n-1)	# p-value : 유의확률
pval

var.test(x, y)				# 등분산 검정
var.test(x, y, alt="greater", conf.level=0.9)	# 등분산 단측
var.test(x, y, conf.level=0.9)

t.test(x, y, var.equal=T)
t.test(x, y)				# 이분산 T테스트(기본)

before = c(128, 131, 131, 127, 132, 125, 141, 137, 118, 132, 129, 135)
after = c(120, 124, 130, 118, 140, 128, 140, 135, 126, 130, 126, 127)

d = before - after
d

d0 = 5

n = length(before)
n
se = sqrt(var(d) / n)		# 표준오차
se
cv = qt(0.975, n-1)			# 임계치
cv

t0 = (mean(d)-d0) / se		# t 검정통계량
t0

pval = 2 * (pt(t0, n-1))	# p-value
pval

t.test(before, after, mu=5, paired=T)
t.test(before, after, mu=5, alt="less", paired=T)

# 10-6 : p1<p2
n1 = 100; n2 = 100; x1 = 21; x2 = 38

phat1 = x1/n1; phat2=x2/n2

alpha = 0.01

phat = (x1+x2)/(n1+n2)				# 공통모비율

se = sqrt(phat*(1-phat)*(1/n1+1/n2))	# 표준오차

z0 = (phat1-phat2)/se				# 검정통계량
z0

cv = qnorm(alpha)					# 0.01 임계차
cv

zalpha = qnorm(0.99)				# Z_a
zalpha

pval = pnorm(z0)					# p-value
pval

L = (phat1-phat2)-zalpha*sqrt((phat1*(1-phat1)/n1)+(phat2*(1-phat2)/n2))
U = (phat1-phat2)+zalpha*sqrt((phat1*(1-phat1)/n1)+(phat2*(1-phat2)/n2))