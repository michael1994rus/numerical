program maxminpor
real*8 a,b,c,d

	a=7.
	b=5.
	i=0

	do while (a.ne.b)
  a=a/10
	b=b/10
	i=i+1
	end do

	write(*,*)i

	c=7.
	d=5.
	j=0

	do while (c.ne.d)
	c=c*10
	d=d*10
	j=j+1
	end do

	write(*,*)j

	end
