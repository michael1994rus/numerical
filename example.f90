        program aproximate
        dimension a(100), b(100), c(100),y1(100),y2(100),y3(100)
        real x0,x1,x2
        PRINT *, 'x0?'
        READ *, x0
        PRINT *, 'x1?'
        READ *, x1
        PRINT *, 'x2?'
        READ *, x2
      pi=4.*atan(1.)
      h=4*pi/100
      do 1, i=1, 100
      a(i)=h*i
      b(i)=sin(a(i))
      y1(i)=sin(x0)*(a(i)-x1)*(a(i)-x2)/(x0-x1)/(x0-x2)
      y2(i)=sin(x1)*(a(i)-x0)*(a(i)-x2)/(x1-x0)/(x1-x2)
      y3(i)=sin(x2)*(a(i)-x0)*(a(i)-x1)/(x2-x1)/(x2-x0)
      c(i)=y1(i)+y2(i)+y3(i)
1     continue
      open (10, File='aprox')
      do 2, i=1, 100
      write (10, *) a(i),b(i),c(i)
2     continue
      close (10)
      end
