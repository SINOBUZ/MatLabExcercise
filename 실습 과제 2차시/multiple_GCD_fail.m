clear, clc;
% N = input('���μ� Ž�� �ִ밪 N�� �Է��Ͻÿ� : ');
for i=1:inf
    N=input('�ִ������� ����� ������ �Է��Ͻÿ�(�Է��� �������� 0 �Է�) : ');
    if N == 0
        i = i-1;
        break;
    end
    inputs(i)=N;
end

for j=1:i-2
  GCD_TEMP = my_GCD3(inputs(j), inputs(j+1));
  GCD_ans(j) = my_GCD3(inputs(j+2), GCD_TEMP);
end

disp("�Էµ� ������ �ִ������� " + GCD_ans(j));