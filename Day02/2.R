height = c(162, 163, 166, 168, 169, 171, 173, 174, 175, 179)
weight = c(54, 56, 56, 64, 62, 64, 82, 67, 71, 74)

students = data.frame(height, weight)
students

str(students)

attach(students)		# attach 함수를 써서 자료를 고정함

plot(height, weight, main="Scatter Plot")	# x축 y축 산점도

cor(weight, height)		# 상관계수