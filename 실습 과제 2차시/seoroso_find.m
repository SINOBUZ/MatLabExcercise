%% 0. 서로소 찾기 스크립트
clear, clc; % 창 클리어, 메모리 초기화
%% 1. 최대값 입력, 인덱스 선언
N = input('서로소 탐색 최대값 N을 입력하시오 : '); % 탐색 범위 지정
index = 0; % 인덱스 초기화
%% 2. 알고리즘 실행
for i=2:N % 2부터 지정 범위까지 실행
    for j = i+1:N % 이중 for문, i의 다음 수부터 N까지
        if my_GCD3(i,j)==1 % i와 i 다음수의 최대공약수가 1이면
            index=index+1; % 인덱스 증가
            seoroso(index,1)=i; % 2차원 배열 사용, 1열은 서로소 쌍의 i
            seoroso(index,2)=j; % 2차원 배열 사용, 2열은 서로소 쌍의 j
        end
    end
end
%% 3. 결과값 표시
disp(N + "까지의 모든 서로소 쌍 : "); disp(seoroso); % 서로소 쌍 출력
disp(N + "까지의 모든 서로소 쌍의 개수 : " + index); % 서로소 쌍 갯수 출력