clear, clc;
N = input('���μ� Ž�� �ִ밪 N�� �Է��Ͻÿ� : ');
index=0;

for i=2:N
    for j = i+1:N
        if my_GCD3(i,j)==1
            index=index+1;
            seoroso(index,1)=i;
            seoroso(index,2)=j;
        end
    end
end

disp(N + "������ ��� ���μ� �� : "); disp(seoroso);
disp(N + "������ ��� ���μ� ���� ���� : " + index);