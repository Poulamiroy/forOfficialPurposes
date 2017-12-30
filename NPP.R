//NORMAL PROBABILIY PAPER
par(bg="yellow")
plot(0,0,xlim=c(-3,3),ylim=c(-3,3),type="n",xlab="Ordred Xi's",ylab="Zi's")
y=seq(0.01,0.99,0.05)
y1=qnorm(y)
y1
abline(h=y1)
abline(v=seq(0,10,1))
n=1000
i=1:n
zi=(i-0.5)/n
zi
y2=qnorm(zi)
y2
abline(h=y2,col=2)
x=sort(rnorm(n))
abline(v=x,col=3)
lines(x,y2,type="b")
