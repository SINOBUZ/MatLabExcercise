clear, clc
format long
syms x
f(x)=input ('f(x) = ');
a(1)=input('f(a)*f(b)<0 (a<b) 인 a값을 입력하시오 : ');
b(1)=input('f(a)*f(b)<0 (a<b) 인 b값을 입력하시오 : ');
k=1;
while k<30
    k=k+1;
 if f(a(1,k-1))*f((a(1,k-1)+b(1,k-1))/2)<0
     a=[a a(1,k-1)];
     b=[b (a(1,k-1)+b(1,k-1))/2];
 elseif f((a(1,k-1)+b(1,k-1))/2)*f(b(1,k-1))<0
     a=[a (a(1,k-1)+b(1,k-1))/2];
     b=[b b(1,k-1)];
 else disp ('근을 찾았습니다')
     disp (a(k-1))
     disp ((a(1,k-1)+b(1,k-1))/2)
     disp (b(k-1))
 end
end
a(1,k)
b(1,k)