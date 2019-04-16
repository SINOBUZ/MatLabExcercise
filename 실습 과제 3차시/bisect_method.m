function [root err no_iter] = bisect_method(f, x1, x2, max_err)

no_iter = 0;
while abs(x1-x2) > max_err
    no_iter = no_iter + 1;
    xmid = (x1+x2)/2;
if f(x1)*f(xmid)<0
    x2 = xmid;
elseif f(xmid)*f(x2)<0
    x1 = xmid;
else
    disp("��Ȯ�� �ظ� ã�ҽ��ϴ�!")
    break;
end
end

root = xmid;
err = f(root);
root
err
no_iter
end