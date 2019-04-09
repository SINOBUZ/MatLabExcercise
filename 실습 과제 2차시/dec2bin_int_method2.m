function bin = dec2bin_int_method2( num )
% 10���� (���� ����)�� 2������ �ٲٱ�

% �Է°� 10������ ������ ��� ����
if (num<0)
    disp('Input positive integer!');
    return;
end

length = floor(log2(num))+1;   % 2���� ǥ���ϴ� �ڸ���
bin = zeros(1,length);         % �ʱ�ȭ
digit = length;                % 2���� �ڸ� �ε���

% ���� ���� �ڸ���(2^0 �ڸ�)���� ���ʷ� ���ϱ�
% ���� ���� �ڸ����� bin ������ ���� ������ ��
while digit > 0
    if (rem(num,2)==0) % �������� 0�� ���
        bin(digit) = 0;
    else
        bin(digit) = 1;
    end 
    num = floor(num/2);
        % 2�� ���� ���� �� --> floor(num/2)
        % 2�� ����� ��� = ������ 2 (������ ����)
        % �׷��� ���� ��� = ������ 2�ϰ� ����
    digit = digit - 1;
end % end-while

end

