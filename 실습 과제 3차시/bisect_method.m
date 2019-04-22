%% 0. �̺й��� Ȱ���� �������� �� ã�� �Լ�
function [root, err, no_iter] = bisect_method(x, x1, x2, max_err)
%% 1. ���� �� �Է�
syms x;
f(x) = f;
err = 1; % �ʱ� ���� ����
no_iter = 0; % ���� Ƚ�� ī���� ����
%% 2. �˰��� ����
while err > max_err % ������ �ִ� �������� �۾����� ���� �ߴ�
    no_iter = no_iter + 1; % ī���� 1 ����
    xmid = (x1+x2)/2; % �߰��� ���
if f(x1)*f(xmid)<0 % x1�� �߰����� �̺й� ��� �����Ҷ�
    x2 = xmid; % x2�� ���� �߰������� ��ü
elseif f(xmid)*f(x2)<0 % x1�� �߰����� �Ұ����ϸ� x2�� �߰��� ��
    x1 = xmid; % x1�� ���� �߰������� ��ü
elseif (f(xmid)*f(x2) == 0 || (f(xmid)*f(x1) == 0)) % �߰����� ��Ȯ�� ���� ��
    root = xmid;
    err = 0;
    return; % ��ũ��Ʈ ���� ����
else  % �̵� ���� �ƴϸ� (=����)
    root = "err";
    err = "err";
    return; % ��ũ��Ʈ ���� ����
end
root = xmid; % ����� ����
err = abs(f(root)); % ���� ���
end
%% 3. ����� ����ȯ
err = double(err); % ������ �Ǽ������� ����ȯ
end