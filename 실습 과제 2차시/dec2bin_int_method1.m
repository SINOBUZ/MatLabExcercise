function bin = dec2bin_int_method1( num )
% 10���� (���� ����)�� 2������ �ٲٱ�

% �Է°� 10������ ������ ��� ����
if (num<0)
    disp('Input positive integer!');
    return;
end

max_digit = floor(log2(num));   % 2���� �ִ� �ڸ��� ���ϱ�
length = max_digit + 1;        % 2���� ǥ�� ��� �ڸ���
% ��, floor(log(26)) = 4 �ִ� �ڸ��� = 2^4
% ����� 2^4 ~ 2^0 ���� 5�ڸ� �ʿ���.
bin = zeros(1,length);         % �ʱ�ȭ
bin_index = 1;

for i=max_digit:-1:0
    if (num >= 2^(i)) 
        bin(bin_index) = 1; % �ε����� 1���� �����Կ� ����
        num = num-2^i;
    else
        bin(bin_index) = 0;
    end
    bin_index = bin_index + 1;
end

end

