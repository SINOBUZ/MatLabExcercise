function bin = dec2bin_int_method2( num )
% 10진수 (양의 정수)를 2진수로 바꾸기

% 입력값 10진수가 음수인 경우 종료
if (num<0)
    disp('Input positive integer!');
    return;
end

length = floor(log2(num))+1;   % 2진수 표현하는 자리수
bin = zeros(1,length);         % 초기화
digit = length;                % 2진수 자리 인덱스

% 가장 낮은 자리수(2^0 자리)부터 차례로 구하기
% 가장 낮은 자리수는 bin 벡터의 가장 마지막 값
while digit > 0
    if (rem(num,2)==0) % 나머지가 0인 경우
        bin(digit) = 0;
    else
        bin(digit) = 1;
    end 
    num = floor(num/2);
        % 2로 나눈 수의 몫 --> floor(num/2)
        % 2의 배수인 경우 = 나누기 2 (나머지 없음)
        % 그렇지 않은 경우 = 나누기 2하고 내림
    digit = digit - 1;
end % end-while

end

