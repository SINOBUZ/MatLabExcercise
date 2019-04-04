%% 0. 완전수 찾기 스크립트
clear, clc; % 메모리 클리어, 명령 창 정리
%% 1. 입력 및 선언
n = input('찾고자 하는 완전수의 개수를 입력하시오. : '); % n 입력받음
index_perfect_num = 0; % 찾은 완전수 개수 (일련번호)
i = 0; % for문에 있던 증감 연산자 선언
%% 2. 알고리즘 실행
while index_perfect_num < n % 일련번호가 n과 같게 될 때까지 반복
    i = i + 1; % for문에 있던 i 증감 대체
    sum_val = 0;  % 약수의 합 초기화
    for j=1:(i-1) % 1부터 자신을 제외한 약수 찾기
        if (is_dividable(i,j)==true) % is_dividable.m 이용
            sum_val = sum_val + j; % 약수의 합
        end
    end
    if (sum_val == i) % 약수의 합 = 자기자신
        index_perfect_num = index_perfect_num+1; % 일련번호 1씩 증가
        perfect_num(index_perfect_num) = i; % 찾은 완전수 대입
    end
end
%% 3. 결과
perfect_num % 찾은 완전수를 화면에 표시함.
        