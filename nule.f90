  program nule
  real*4  a,b,c
  real*8  x,y,z
  a=1.
  b=1.
  x=1.
  y=1.
  do 1 while(a.NE.c)
  b=b/10
  c=a+b
1  continue
  do 2 while(x.NE.z)
  y=y/10
  z=x+y
2  continue
  write(*,*) b,y
  stop
  end
