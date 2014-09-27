program lagrange
parameter(n = 100, m = 10) !задаём параметры разбиения:m-число точек интерполяции,n-множитель
dimension x(n*m), y(n*m), z(n*m)!объявляем массивы
open (20, FILE='polinom2.txt')
a=-10.0!задаём интервал
b=10.0
h=(b-a)/m!задаем шаг для узлов интерполяции
d=(b-a)/(m*n)!задаем шаг для функции и полинома
do I=1, m
x(I)=a+(I-1)*h
y(I)=fun(x(I))
end do
do I=1, m*n
s=0.0
z(I)=a+(I-1)*d
do K=1, m
p=1.0
do J=1, m
if(j.ne.k) p=p*(z(I)-x(J))/(x(K)-x(J))
end do
s=s+y(K)*p
end do
write (20,*) z(I), s
end do
open (21, file='function2.txt')
do I=1,m*n
x(I)=a+(I-1)*d
y(I)=fun(x(I))
write (21,*) x(I), y(I)
end do
close (21)
close (20)
end program
function fun(x)
fun=exp(sin(x))!объявляем функцию на выбор
return
end
