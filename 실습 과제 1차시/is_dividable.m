%% 0. 약수인지 판단하는 함수 is_dividable
function output = is_dividable (int1, int2)
%% 1. 제수에서 피제수 차감 반복
while int1 > 0 % int가 양수일 동안만 반복, 0이 되거나 음수가 되면 반복 중지
    int1 = int1-int2; % int1에서 int2 차감
end
%% 2. 함수 참/거짓 출력
if int1 == 0
    output = 1; % 나머지가 0이면 1 출력
else
    output = 0; % 나머지가 0이 아니면 0 출력
end