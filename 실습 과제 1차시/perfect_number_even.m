%% 0. ������ ã�� ��ũ��Ʈ
clear, clc; % �޸� Ŭ����, ��� â ����
%% 1. �Է� �� ����
n = input('ã���� �ϴ� �������� ������ �Է��Ͻÿ�. : '); % n �Է¹���
index_perfect_num_6 = 0; % ã�� ���ڸ� 6 ������ ���� (�Ϸù�ȣ)
index_perfect_num_28 = 0; % ã�� ���ڸ� 28 ������ ���� (�Ϸù�ȣ)
i_6 = -4; % for���� �ִ� ���� ������ ����, 6-10 = -4
i_28 = -72; % for���� �ִ� ���� ������ ����, 28-100 = -72
%% 2. �˰��� ���� - ���ڸ��� 6
while index_perfect_num_6 + index_perfect_num_28 < n % ���� ���� : �Ϸù�ȣ�� ��
  sum_val_6 = 0;  % ����� �� �ʱ�ȭ
    for j=1:(i_6-1) % 1���� �ڽ��� ������ ��� ã��
        if (is_dividable(i_6,j)==true) % is_dividable.m �̿�
            sum_val_6 = sum_val_6 + j; % ����� ��
        end
    end
    if (sum_val_6 == i_6) % ����� �� = �ڱ��ڽ�
        index_perfect_num_6 = index_perfect_num_6+1; % �Ϸù�ȣ 1�� ����
        perfect_num_6(index_perfect_num_6) = i_6; % ã�� ������ ����
    end
%% 2. �˰��� ���� - ���ڸ��� 28
    i_28 = i_28 + 100; % for���� �ִ� i ���� ��ü
    sum_val_28 = 0;  % ����� �� �ʱ�ȭ
    for j=1:(i_28-1) % 1���� �ڽ��� ������ ��� ã��
        if (is_dividable(i_28,j)==true) % is_dividable.m �̿�
            sum_val_28 = sum_val_28 + j; % ����� ��
        end
    end
    if (sum_val_28 == i_28) % ����� �� = �ڱ��ڽ�
        index_perfect_num_28 = index_perfect_num_28+1; % �Ϸù�ȣ 1�� ����
        perfect_num_28(index_perfect_num_28) = i_28; % ã�� ������ ����
    end
end
%% 3. ���
if n == 1
  perfect_num_6 % ����ó�� : n�� 1�̸� ���ڸ��� 6�ΰŸ� ǥ��
else
  perfect_num_6  
  perfect_num_28
end