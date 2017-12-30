par(mfrow=c(2,2))
par(bg="gold")
x<-Animals$body
x
y<-Animals$brain
y
x1=log(x)
x1
y1=log(y)
y1
plot(x1,y1,xlab="Body Weight",ylab="Brain weight",main="Relationship btween body weight and brain weight of animals",col=1:28)
hist(x1,freq=TRUE,border=1:28,angle=60,density=10,col=1:28,main="Histogram for the body weight of animals",ylab="frequency",xlab="Class intervals",xlim=c(-5,10))
hist(y1,freq=TRUE,border=1:28,angle=60,density=10,col=1:28,main="Histogram for the brain weight of animals",ylab="frequency",xlab="Class intervals",xlim=c(-5,10))
boxplot(x1,y1,col=c("orange","red"),main="Boxplots for body weight and brain weight of animals",ylim=c(-5,15))
stem(x1,scale=1,width=80)
stem(y1,scale=1,width=100)
