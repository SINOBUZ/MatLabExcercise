%% 0. ������ ã�� ��ũ��Ʈ
clear, clc; % �޸� Ŭ����, ��� â ����
%% 1. �Է� �� ����
n = input('ã���� �ϴ� �������� ������ �Է��Ͻÿ�. : '); % n �Է¹���
index_perfect_num = 0; % ã�� ������ ���� (�Ϸù�ȣ)
i = 0; % for���� �ִ� ���� ������ ����
%% 2. �˰��� ����
while index_perfect_num < n % �Ϸù�ȣ�� n�� ���� �� ������ �ݺ�
    i = i + 1; % for���� �ִ� i ���� ��ü
    sum_val = 0;  % ����� �� �ʱ�ȭ
    for j=1:(i-1) % 1���� �ڽ��� ������ ��� ã��
        if (is_dividable(i,j)==true) % is_dividable.m �̿�
            sum_val = sum_val + j; % ����� ��
        end
    end
    if (sum_val == i) % ����� �� = �ڱ��ڽ�
        index_perfect_num = index_perfect_num+1; % �Ϸù�ȣ 1�� ����
        perfect_num(index_perfect_num) = i; % ã�� ������ ����
    end
end
%% 3. ���
perfect_num % ã�� �������� ȭ�鿡 ǥ����.
        