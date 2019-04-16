function bin = dec2bin_int_method1( num )
% 10진수 (양의 정수)를 2진수로 바꾸기

% 입력값 10진수가 음수인 경우 종료
if (num<0)
    disp('Input positive integer!');
    return;
end

max_digit = floor(log2(num));   % 2진수 최대 자리수 구하기
length = max_digit + 1;        % 2진수 표현 결과 자리수
% 예, floor(log(26)) = 4 최대 자리수 = 2^4
% 결과는 2^4 ~ 2^0 까지 5자리 필요함.
bin = zeros(1,length);         % 초기화
bin_index = 1;

for i=max_digit:-1:0
    if (num >= 2^(i)) 
        bin(bin_index) = 1; % 인덱스가 1부터 시작함에 유의
        num = num-2^i;
    else
        bin(bin_index) = 0;
    end
    bin_index = bin_index + 1;
end

end

