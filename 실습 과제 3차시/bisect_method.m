%% 0. 이분법을 활용한 방정식의 해 찾기 함수
function [root, err, no_iter] = bisect_method(x, x1, x2, max_err)
%% 1. 선언 및 입력
syms x;
f(x) = f;
err = 1; % 초기 오차 설정
no_iter = 0; % 실행 횟수 카운터 설정
%% 2. 알고리즘 실행
while err > max_err % 오차가 최대 오차보다 작아지면 루프 중단
    no_iter = no_iter + 1; % 카운터 1 증가
    xmid = (x1+x2)/2; % 중간값 계산
if f(x1)*f(xmid)<0 % x1과 중간값이 이분법 사용 가능할때
    x2 = xmid; % x2를 기존 중간값으로 대체
elseif f(xmid)*f(x2)<0 % x1과 중간값이 불가능하면 x2와 중간값 비교
    x1 = xmid; % x1을 기존 중간값으로 대체
elseif (f(xmid)*f(x2) == 0 || (f(xmid)*f(x1) == 0)) % 중간값이 정확히 해일 때
    root = xmid;
    err = 0;
    return; % 스크립트 실행 중지
else  % 이도 저도 아니면 (=오류)
    root = "err";
    err = "err";
    return; % 스크립트 실행 중지
end
root = xmid; % 결과값 대입
err = abs(f(root)); % 오차 계산
end
%% 3. 결과값 형변환
err = double(err); % 오차값 실수형으로 형변환
end