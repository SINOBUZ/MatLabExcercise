function gcd = my_GCD3(a,b)

if (b==0)
    gcd=a;
else
    gcd=my_GCD3(b, rem(a,b));
end