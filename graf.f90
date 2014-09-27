program graf
dimension t(100), y(100)
pi=4.*atan(1.)
h=pi/100
sum=0.
do 1 i=1,100
x=h*i
z=sin(x)*h
sum=sum+z
y(i)=sum
t(i)=x
1 continue
open (10,file='graf.txt')
do 2 i=1,100
write (10,*) t(i),y(i)
2 continue
close(10)
end
