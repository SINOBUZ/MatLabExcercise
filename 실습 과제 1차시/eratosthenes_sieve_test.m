%% 0. �������׳׽��� ü �˰���
clear, clc; % ��� â �ʱ�ȭ, �޸� �ʱ�ȭ
%% 1. �Է� �� ����
n = input('ǥ�� ������ �Ҽ� ������ ã�� ���� ��Ʈ�� N�� �Է��Ͻÿ� : '); % �Է�
index_prime=1; % �Ҽ� �ε��� ����
is_prime=0; % �Ҽ� �Ǵ� ���� ����
prime_number_result(1)=2;
%% 2. ������ �Ҽ����� �ƴ��� �Ǵ�
for i=3:((2^n)-1) % 3���� 2^n-1���� üũ
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
%% 3. ��� ���
prime_number_result % ȭ�鿡 �Ҽ� ��� ���