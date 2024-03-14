x = c(55000, 55000, 50000, 55000, 75000, 70000, 60000, 200000)
x

length(x)				# 자료수
mean(x)				# 평균
median(x)				# 중앙값
mean(x, trim = 0.2) 	# 20% 절사평균
var(x)				# 분산
sd(x)				# 표준편차
sort(x)				# 오름차순 정렬
min(x)				# 최솟값
max(x)				# 최댓값
quantile(x, prob=0.25)	# 제1사분위수
quantile(x, prob=0.75)	# 제3사분위수
IQR(x)				# 사분위수 범위(제3사분위수-제1사분위수)
IQR(x)/2				# 제4사분위 편차
summary(x)			# 수치요약

range = max(x)-min(x) 	# 범위
range

