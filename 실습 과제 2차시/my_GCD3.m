%% 0. 재귀순환 최대공약수 찾기 함수
function gcd = my_GCD3(a,b) 
%% 1. 함수 알고리즘
if (b==0) % a와 b의 최종 나머지가 0이면
    gcd=a; % 결과값으로 최종 a 출력
else % 아니면
    gcd=my_GCD3(b, rem(a,b)); % b와 (a와 b의 나머지)로 재귀순환
end