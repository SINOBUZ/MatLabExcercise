clear, clc
format long
syms x
f(x)=input ('f(x) = ');
a(1)=input('f(a)*f(b)<0 (a<b) �� a���� �Է��Ͻÿ� : ');
b(1)=input('f(a)*f(b)<0 (a<b) �� b���� �Է��Ͻÿ� : ');
k=1;
while k<30
    k=k+1;
 if f(a(1,k-1))*f((a(1,k-1)+b(1,k-1))/2)<0
     a=[a a(1,k-1)];
     b=[b (a(1,k-1)+b(1,k-1))/2];
 elseif f((a(1,k-1)+b(1,k-1))/2)*f(b(1,k-1))<0
     a=[a (a(1,k-1)+b(1,k-1))/2];
     b=[b b(1,k-1)];
 else disp ('���� ã�ҽ��ϴ�')
     disp (a(k-1))
     disp ((a(1,k-1)+b(1,k-1))/2)
     disp (b(k-1))
 end
end
a(1,k)
b(1,k)