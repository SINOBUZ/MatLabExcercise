%% 0. 여러 수의 최대공약수 찾기 스크립트
clear, clc; % 메모리 초기화, 창 클리어
i=1;
%% 1. 대상 수 입력
while(1) % 조건값(0) 이 입력될 때 까지 반복
    N=input('최대공약수를 계산할 수들을 입력하시오(입력이 끝났으면 0 입력) : ');
    if N == 0 % 0이 입력되었다면
        i = i-1; % 맨 마지막에 더해진 1을 i에서 제하고
        break; % while루프 탈출
    end % 그렇지 않다면
    inputs(i)=N; % inputs 벡터의 i 번째에 N 대입
    i = i + 1; % i 1 증가
end
%% 2. 알고리즘 실행
if i == 1 % 입력된 수가 하나 밖에 없을 때
    disp("하나만 가지고 최대공약수를 어떻게 구하냐 닌"); % 에러 메시지 출력
elseif i == 2 % 입력된 수가 2개일 때
    j = 1;
    GCD_ans(1) = my_GCD3(inputs(1), inputs(2)); % 원래의 GCD함수 이용
else % 입력된 수가 3개 이상일 때
for j=1:i-2 % j는 j+2까지 참조하므로 i-2까지 루프해야 함
    if j == 1 % j가 1일 때, 즉 최초 실행일 때
      GCD_TEMP = my_GCD3(inputs(j), inputs(j+1)); % 임시 최대공약수 계산
      GCD_ans(j) = my_GCD3(inputs(j+2), GCD_TEMP); % 다음 수와 다시 계산
    else % 이미 한번 최초 실행을 거쳤을 경우
      GCD_TEMP = my_GCD3(GCD_ans(j-1), inputs(j+1)); % 다시 계산한 최대공약수를
      GCD_ans(j) = my_GCD3(inputs(j+2), GCD_TEMP); % 다음 수와 다시 계산
    end
end
end
%% 3. 결과값 표시
if i >= 2 % 에러 메시지를 출력할 상황이 아니라면
disp("입력된 수들의 최대공약수는 " + GCD_ans(j)); % 최대공약수 출력
end