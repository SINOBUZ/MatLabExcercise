%% 0. 에라스토테네스의 체 알고리즘
clear, clc; % 명령 창 초기화, 메모리 초기화
%% 1. 입력 및 선언
n = input('표현 가능한 소수 개수를 찾기 위한 비트수 N을 입력하시오 : '); % 입력
index_prime=1; % 소수 인덱스 선언
is_prime=0; % 소수 판단 인자 선언
prime_number_result(1)=2;
%% 2. 정수가 소수인지 아닌지 판단
for i=3:((2^n)-1) % 3부터 2^n-1까지 체크
    for j=prime_number_result % 지금까지 나온 소수의 행렬
        if is_dividable(i,j)==1 % i가 j에 나누어 떨어질 때
            is_prime = is_prime + 1; % 나누어 떨어진 횟수 1 증가
        end
    end
    if is_prime == 0 % 한번도 나누어 떨어지지 않았을 때
        index_prime = index_prime + 1; % 소수 인덱스 1 증가
        prime_number_result(index_prime)=i; % 소수 벡터에 i 대입
        is_prime = 0; % 나누어 떨어진 횟수 초기화
    else
        is_prime = 0; % 나누어 떨어진 횟수 초기화
    end
end
%% 3. 결과 출력
prime_number_result % 화면에 소수 결과 출력