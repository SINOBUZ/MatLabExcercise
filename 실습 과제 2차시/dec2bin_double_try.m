%% 0. 0보다 크고 1보다 작은 양의 실수를 2진수로 변환하는 스크립트
clear, clc; % 메모리 초기화, 창 클리어
format long;
%% 1. 변환 대상 입력
num = input('변환할 1보다 작은 양의 실수를 입력하시오 : '); % 변환 대상 입력
if (num<=0) || (num>=1) % 만약 0 이하거나 1 이상이면
    disp('1보다 작은 양의 실수를 가져오라고!'); % 에러 메시지 출력
    return; % 스크립트 종료
end
%% 2. 변수 선언
bin_index = 1; % 2진수 벡터 인덱스 선언
num_temp = num; % 계산에 사용될 num 변수 선언
MAX_ERR = 10^(-4); % 최대 오차 선언
ERR = 1; % 최초 오차 선언
answer = 0; % 예쁜 답 변수 선언
%% 3. 알고리즘 실행
while (bin_index <= 15) && (ERR > MAX_ERR) % 최대 자리수 : 15, 오차 비교
    ERR = 1; % 오차 1로 초기화
    demical = 0; % 변환된 10진수 초기화
    if num_temp*2 == 1 % 만약 수에 2를 곱한게 1이라면
        bin(bin_index) = 1; % 이진수가 딱 떨어져 나옴.
        bin_index = bin_index + 1; % 배열 인덱스 1 추가 (아래 for문 고려)
        ERR = 0; % while문 탈출 플래그
    elseif num_temp*2 > 1 % 만약 수에 2를 곱한게 1보다 크다면
        bin(bin_index) = 1; % 2진수 벡터에 1 대입
        bin_index = bin_index + 1; % 2진수 벡터 인덱스 1 증가
        num_temp = num_temp*2 - 1; % 다음에 계산할 수는 1이 빠져야 함
    else % 만약 수에 2를 곱한게 1보다 작다면
        bin(bin_index) = 0; % 2진수 벡터에 0 대입
        bin_index = bin_index + 1; % 2진수 벡터 인덱스 1 증가
        num_temp = num_temp*2; % 다음에 계산할 수는 그대로
    end
    for i=1:bin_index-1 % 증가된 인덱스에서 1 빼야 함
       demical = demical + bin(i)*(1/2)^i; % 변환된 2진수를 다시 10진수로
    end
    ERR = num - demical; % 오차 계산
end
%% 4. 결과값 연산
for i=1:(bin_index-1) % 계산된 항 직전까지만 계산 실행
    answer = answer + bin(i)*((1/10)^i); % 연산
end
answer % long 형태로 답을 출력하면?
disp(num + "을 2진수로 변환하면 " + answer); % disp 함수를 이용하면?