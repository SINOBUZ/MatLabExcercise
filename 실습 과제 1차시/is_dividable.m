%% 0. ������� �Ǵ��ϴ� �Լ� is_dividable
function output = is_dividable (int1, int2)
%% 1. �������� ������ ���� �ݺ�
while int1 > 0 % int�� ����� ���ȸ� �ݺ�, 0�� �ǰų� ������ �Ǹ� �ݺ� ����
    int1 = int1-int2; % int1���� int2 ����
end
%% 2. �Լ� ��/���� ���
if int1 == 0
    output = 1; % �������� 0�̸� 1 ���
else
    output = 0; % �������� 0�� �ƴϸ� 0 ���
end