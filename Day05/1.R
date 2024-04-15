# 하나의 확률만을 보여줌
# red 2, white 3, sample = 2
dhyper(x=0, m=2, n=3, k=2)		# P(X=0)
dhyper(x=1, m=2, n=3, k=2)
dhyper(x=2, m=2, n=3, k=2)

phyper(q=1, m=2, n=3, k=2)		# P(X<=1)
phyper(1, 2, 3, 2)

# 로또
dhyper(x=0, m=6, n=39, k=6)	# 하나도 못 맞출 확률
dhyper(x=1, m=6, n=39, k=6)
dhyper(x=2, m=6, n=39, k=6)
dhyper(x=3, m=6, n=39, k=6)
dhyper(x=4, m=6, n=39, k=6)
dhyper(x=5, m=6, n=39, k=6)
dhyper(x=6, m=6, n=39, k=6)

phyper(q=2, m=6, n=39, k=6)	# P(X<=2) 꽝 나올 확률

# binom
dbinom(x=8, size=20, p=0.3)	# 8명이 성공할 확률(d는 하나만을 의미)
pbinom(q=11, size=20, p=0.3)	# P(X<=11) 11까지 누적될 확률(p는 누적을 의미)

1-pbinom(q=10, size=20, p=0.3)	# P(X>=11)

# P(4<=X<=10)
pbinom(q=10, size=20, p=0.3) - pbinom(q=3, size=20, p=0.3)

# EX1
dhyper(x=0, m=8, n=7, k=5)
dhyper(x=1, m=8, n=7, k=5)
dhyper(x=2, m=8, n=7, k=5)
dhyper(x=3, m=8, n=7, k=5)
dhyper(x=4, m=8, n=7, k=5)
dhyper(x=5, m=8, n=7, k=5)

m=5*8/15
v=5*(8/15)*(7/15)*(10/14)

# EX2 binom, n=10, p=0.4
dbinom(3,10,0,4)
pbinom(6,10,0,4)	# 누적함수를 계산할 때는 P
1-pbinom(6,10,0,4)	# P(X>=7)
pbinom(7,10,0,4) - pbinom(3,10,0,4) # P(4<=X<8)

# EX3
dbinom(6, 18, 0.3)
pbinom(5, 10, 0.7)

# EX4
dbinom(4, 12, 1/3)
1-dbinom(0, 12, 1/3)
pbinom(4, 12, 1/3)

# EX5
1-pbinom(5, 10, 0.2)	# P(X>=6)

# EX6
1-pbinom(9, 20, 0.3)

# 예제 6-4
dpois(x=4, lambda=6)
ppois(q=3, lambda=6)	# P(X<=3)
dpois(x=6, lambda=6)

dpois(x=0, lambda=3.1)
dpois(x=1, lambda=3.1)
dpois(x=2, lambda=3.1)
dpois(x=3, lambda=3.1)

dbinom(x=0, size=1860, p=1/600)
dbinom(x=1, size=1860, p=1/600)
dbinom(x=2, size=1860, p=1/600)
dbinom(x=3, size=1860, p=1/600)

# EX7
# m=3 P(X=1), P(X<=5)
dpois(1, 3)
ppois(5, 3)

# m=0.3 P(X=0), P(X > 1)
dpois(0, 0.3)
1-ppois(1, 0.3)

# m=2 P(X=2), P(3<=X<=7)
dpois(2, 2)
ppois(7, 2) - ppois(2, 2)

# EX8
m = 2.5
dpois(5, 2.5)
1-ppois(4, 2.5)

# EX9
m = 10
1-ppois(4, 10)