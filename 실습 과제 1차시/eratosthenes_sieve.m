%% 0. �������׳׽��� ü �˰���
clear, clc; % ��� â �ʱ�ȭ, �޸� �ʱ�ȭ
%% 1. �Է� �� ����
n = input('ǥ�� ������ �Ҽ� ������ ã�� ���� ��Ʈ�� N�� �Է��Ͻÿ� : '); % �Է�
index_prime=0; % �Ҽ� �ε��� ����
is_prime=0; % �Ҽ� �Ǵ� ���� ����
%% 2. ������ �Ҽ����� �ƴ��� �Ǵ�
for i=2:((2^n)-1) % 2���� 2^n-1���� üũ
    if i == 2 % i�� 2�϶��� ���ϴ� �����
    for j=1:i
        if is_dividable(i,j)==1 % i�� j�� ������ ������ ��
            is_prime = is_prime + 1; % ������ ������ Ƚ�� 1 ����
        end
    end
    if is_prime == 2 % 1�� �ڱ� �ڽ�, 2ȸ ������ �������� ��
        index_prime = index_prime + 1; % �Ҽ� �ε��� 1 ����
        prime_number_result(index_prime)=i; % �Ҽ� ���Ϳ� i ����
        is_prime = 0; % ������ ������ Ƚ�� �ʱ�ȭ
    else
        is_prime = 0; % ������ ������ Ƚ�� �ʱ�ȭ
    end
    else % i�� 2�� �ƴ� ��
        for j=prime_number_result % ���ݱ��� ���� �Ҽ��� ���
        if is_dividable(i,j)==1 % i�� j�� ������ ������ ��
            is_prime = is_prime + 1; % ������ ������ Ƚ�� 1 ����
        end
    end
    if is_prime == 0 % �ѹ��� ������ �������� �ʾ��� ��
        index_prime = index_prime + 1; % �Ҽ� �ε��� 1 ����
        prime_number_result(index_prime)=i; % �Ҽ� ���Ϳ� i ����
        is_prime = 0; % ������ ������ Ƚ�� �ʱ�ȭ
    else
        is_prime = 0; % ������ ������ Ƚ�� �ʱ�ȭ
    end
    end
end
%% 3. ��� ���
disp(n + "��Ʈ�� ǥ���� �� �ִ� �Ҽ� ���� : " + index_prime); % �Ҽ� ���� ���
disp(n + "��Ʈ�� ǥ���� �� �ִ� �ִ� �Ҽ� : " + prime_number_result(index_prime)); % �ִ� �Ҽ� ���