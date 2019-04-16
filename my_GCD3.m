%% 최대공약수 찾기 함수 my_GCD3
function gcd = my_GCD3(a,b)
if (b==0)
    gcd=a;
else
    gcd=my_GCD3(b, rem(a,b)); % 재귀호출
end