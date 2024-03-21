data = c(150, 153, 155, 152, 146, 160, 155, 155, 146, 155, 163, 151, 159)
data

hist(data)

hist(data, right=FALSE)		# 오른쪽 값이 포함되지 않도록

hist(data, br=seq(140, 170, 10), right=FALSE)	# 구간 설정 + 10단위로 자르기

hist(data, br=seq(140, 170, 5), right=FALSE)	# 구간 설정

stem(data)		# 줄기잎그림

boxplot(data)		# 상자그림(진한선이 중위수 동그라미 값은 이상 값)

##################################################################

xbar = mean(data)	# 평균
xbar

med = median(data)	# 중위수
med

s2 = var(data)		# 분산
s2

std = sd(data)		# 표준편차
std

n = length(data)	# 자료수
n

cv = std / xbar	
cv
