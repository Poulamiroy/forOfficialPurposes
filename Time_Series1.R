//Detrending the data and finding out the seasonal indices
x=mdeaths
x
yt=as.vector(x)
yt
xt=c(1:length(yt))
xt
fit1=lm(yt~xt)
fit1
plot(xt,yt,main="graph of linear and quadratic fitting")
curve(1709.152-5.841*x,from=1,to=72,add=T)
fit2=lm(yt~(I(xt)+I(xt*xt)))
fit2
curve(1679.41147-3.4299*x-0.03303*x^2,from=1,to=72,add=T)
T=1709.152-5.841*xt
T
T1=matrix(T,6,12,byrow=T)
T1
x1=matrix(x,6,12,byrow=T)
x1
s1=x1-T1
s1
avgam=array(dim=1)
for(i in 1:12)
{
avgam[i]=sum(s1[,i])/6
}
Gam=sum(avgam)/12
Gam
At=(avgam/Gam)*100
At
sum(At)
