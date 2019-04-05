%% 0. 완전수 찾기 스크립트
clear, clc; % 메모리 클리어, 명령 창 정리
%% 1. 입력 및 선언
n = input('찾고자 하는 완전수의 개수를 입력하시오. : '); % n 입력받음
index_perfect_num_6 = 0; % 찾은 끝자리 6 완전수 개수 (일련번호)
index_perfect_num_28 = 0; % 찾은 끝자리 28 완전수 개수 (일련번호)
i_6 = -4; % for문에 있던 증감 연산자 선언, 6-10 = -4
i_28 = -72; % for문에 있던 증감 연산자 선언, 28-100 = -72
%% 2. 알고리즘 실행 - 끝자리가 6
while index_perfect_num_6 + index_perfect_num_28 < n % 루프 기준 : 일련번호의 합
  sum_val_6 = 0;  % 약수의 합 초기화
    for j=1:(i_6-1) % 1부터 자신을 제외한 약수 찾기
        if (is_dividable(i_6,j)==true) % is_dividable.m 이용
            sum_val_6 = sum_val_6 + j; % 약수의 합
        end
    end
    if (sum_val_6 == i_6) % 약수의 합 = 자기자신
        index_perfect_num_6 = index_perfect_num_6+1; % 일련번호 1씩 증가
        perfect_num_6(index_perfect_num_6) = i_6; % 찾은 완전수 대입
    end
%% 2. 알고리즘 실행 - 끝자리가 28
    i_28 = i_28 + 100; % for문에 있던 i 증감 대체
    sum_val_28 = 0;  % 약수의 합 초기화
    for j=1:(i_28-1) % 1부터 자신을 제외한 약수 찾기
        if (is_dividable(i_28,j)==true) % is_dividable.m 이용
            sum_val_28 = sum_val_28 + j; % 약수의 합
        end
    end
    if (sum_val_28 == i_28) % 약수의 합 = 자기자신
        index_perfect_num_28 = index_perfect_num_28+1; % 일련번호 1씩 증가
        perfect_num_28(index_perfect_num_28) = i_28; % 찾은 완전수 대입
    end
end
%% 3. 결과
if n == 1
  perfect_num_6 % 예외처리 : n이 1이면 끝자리가 6인거만 표시
else
  perfect_num_6  
  perfect_num_28
end