name = c("LEE", "KIM", "KANG")
kor = c(80, 90, 70)
eng = c(90, 80, 70)

sungjuk = data.frame(name, kor, eng)
sungjuk

###########################################

height = c(162, 163, 166, 168, 169, 171, 173, 174, 175, 179)
weight = c(54, 56, 56, 64, 62, 64, 82, 67, 71, 74)

students = data.frame(height, weight)

str(students)

plot(students$height, students$weight, main="Scatter plot")

cor(students$weight, students$height)

#######################################

attach(students)

plot(height, weight, main="Scatter plot")

cor(weight, height)

############### 질적자료(구분되는 자료) ##########################

blood2=read.table("C:/Users/user/Documents/SBG/blood.txt",header=T) # header는 제목 있을 때는 T로
blood2

str(blood2)

table(blood2$blood)

attach(blood2)

barplot(table(blood))

slices=c(8,1,10,5)

pie(slices)

############### 양적자료(크기값을 갖는 자료) #######################

data2 = c(9, 12, 19, 14, 12, 14, 12, 10, 16, 11, 9, 11, 13, 11, 13, 15, 13, 14)

n = length(data2)  # 자료수
n

xbar = mean(data2)	# 평균
xbar

s2 = var(data2)	# 분산
s2

s = sd(data2)		# 표준편차
s

med = median(data2)	# 중앙값
med

range = max(data2) - min(data2)
range

IQR(data2)		# 사분위범위

IQR(data2) / 2 	# 사분위편차