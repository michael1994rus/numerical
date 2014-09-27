program polinom
        parameter(n = 40, m = 200)
        dimension x(n*m), y(n*m), z(n*m)

        open (13, FILE='func.dat')


!        n=100
!        m=40
        a=-8.0
        b=8.0
        h=(b-a)/m
        d=h/n

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
              write (13,*) z(I), s
        end do

        open (14, file='func1.dat')
        do I=1,m*n
          x(I)=a+(I-1)*d
          y(I)=fun(x(I))
          write (14,*) x(I), y(I)
        end do


        close (14)
        close (13)
        end program


        function fun(x)
          fun=exp(sin(x))
          return
        end
