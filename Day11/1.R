# 172p
x = c(89.6, 88.8, 86.3, 82.6, 84.7, 85.8, 80.5, 84.3, 91.3, 86.7, 87.6, 85.2, 78.5, 85.3, 81.5, 83.9, 86.9, 82.0, 83.0, 85.5)

xbar = mean(x)
n = length(x)
sigma = sqrt(3.1)		# 모표준편차
se = sigma/sqrt(n)		# 표준오차
error = qnorm(0.975) * se	# 오차한계
LCL = xbar - error		# 하한
UCL = xbar + error		# 상한
LCL
UCL

########## 9-4 sigma 아는 경우 ##########

mu0 = 87			 	# H0: mu = 87, H1: mu < 87
z0 = (xbar-mu0) / se		# 검정통계량 Z = (xbar-mu0)/(sigma/sqrt(n))
z0
pval = pnorm(z0)		# P(Z<z0)
pval					# 유의수준 > pvalue H0 기각

########## sigma 모르는 경우 ##########
x = c(89.6, 88.8, 86.3, 82.6, 84.7, 85.8, 80.5, 84.3, 91.3, 86.7, 87.6, 85.2, 78.5, 85.3, 81.5, 83.9, 86.9, 82.0, 83.0, 85.5)

xbar = mean(x)
n = length(x)
se = sd(x)/sqrt(n)			# 표준오차
error = qt(0.975, n-1) * se	# 오차한계
LCL = xbar - error			# 하한
UCL = xbar + error			# 상한
LCL
UCL

########## T 검정 #############
mu0 = 87
t0 = (xbar-mu0) / se
t0
t_val = qt(0.05, n-1)
t_val
pval = pt(t0, n-1)
pval

t.test(x, mu=87, conf.level=0.95, alt="less")	# alt="greater"

t.test(x, mu=87, conf.level=0.95)

######## 모비율 검정 ###########
n = 30
x = 18

phat = x/n					# 표본비율
se = sqrt(phat*(1-phat)/n)		# 표준오차
error = qnorm(0.975)*se		# 95% 오차한계
LCL = phat - error
UCL = phat + error
LCL
UCL

######## 모비율 검정 ###########
p0 = 0.5					# 모비율
se = sqrt(p0 * (1-p0) / n)		# 표준오차
z0 = (phat-p0) / se			# 검정통계량
z0
pval = 2 * (1-pnorm(z0))		# 양측(p-value)
pval

round(c(Z0 = z0, p_value = pval), 3)
prop.test(x=18, n=30, p=0.5, correct=F)

## 1집단 모분산 ##
x = c(226, 228, 226, 225, 232, 228, 227, 229, 225, 230)
xbar = mean(x)
n = length(x)
s2 = var(x)
lcl = ((n-1)*s2)/qchisq(0.975, n-1)
ucl = ((n-1)*s2)/qchisq(0.025, n-1)

######## 1집단 모분산 검정 0.5 ################
sigma2 = 1.5^2				# 모분산
chisq0 = (n-1) * s2/sigma2		# 검정통계량 chi^2
chisq0
qchisq(0.95, 9)				# 0.05 임계치
pval = 1-pchisq(chisq0, n-1)	# (p-value) P(chi^2 > chisq0) = 
pval						# 유의수준 0.05 > p-value H0 기각