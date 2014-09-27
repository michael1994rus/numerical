 PROGRAM Lagrang
REAL*8  x,y,pi,dx,a,buff
REAL *8 ,ALLOCATABLE :: XArray(:)  !задача динамических массивов точек интерполяций
REAL *8 ,ALLOCATABLE :: YArray(:)

INTEGER i,j ,k,n,m
OPEN (1, file='output1.txt') !файл интерполяции
OPEN (2, file='output2.txt') !файл аналитический
n=5                         !число точек интерполяции
m=5000                      !число точек на графике
ALLOCATE(XArray(n))
ALLOCATE(YArray(n))

pi=3.1415926                 !число пи
a=2.d0*pi/(n-1)
DO i=1,n
 XArray(i)=-pi+(i-1)*a     !задаем точки интерполяции
END DO


DO i=1,n
 YArray(i)=exp(sin(XArray(i))) !определение  функции в точках интерполяции
END DO

x=-pi                        !начальная точка
y=0.d0
dx=2.d0*pi/m                        !шаг графика

DO i=1,m                      !цикл по шагам графика
 y=0.d0
 DO j=1,n                     !цикл по базису
  buff=1                      !buff-базисный полином
  DO k=1,n
   IF (k .NE. j) THEN         !вычисление базисного полинома
    buff=buff*(x-XArray(k))/(XArray(j)-XArray(k))
   END IF
  END DO
  y=y+YArray(j)*buff            !вычисление значения интерполяции
 END DO
 write(1, *) x, y               ! запись в файл интерполяции
 y=exp(dsin(x))                 !аналитическое вычисление
 write(2, *) x, y               !запись в файл аналитический
 x=x+dx                         !шаг по графику
END DO
PRINT*,"DONE"
READ*
END

!Программа интерполирует функицию exp(sin(x)) по 10 точкам в области x (-pi;pi)
