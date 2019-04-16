clear, clc;
% N = input('서로소 탐색 최대값 N을 입력하시오 : ');
for i=1:inf
    N=input('최대공약수를 계산할 수들을 입력하시오(입력이 끝났으면 0 입력) : ');
    if N == 0
        i = i-1;
        break;
    end
    inputs(i)=N;
end

for j=1:i-2
  GCD_TEMP = my_GCD3(inputs(j), inputs(j+1));
  GCD_ans(j) = my_GCD3(inputs(j+2), GCD_TEMP);
end

disp("입력된 수들의 최대공약수는 " + GCD_ans(j));