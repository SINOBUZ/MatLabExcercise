%% 0. 할선법을 이용한 방정식의 해 찾기 함수
function [root, err, no_iter] = secant_method(f, x1, x2, max_err)
%% 1. 선언 및 입력
syms x; % x는 함수의 정의역
f(x) = f;
n=2; % 증감 카운터 선언, 2부터 시작 (점화식)
x(1)=x1; % x벡터의 인덱스 1에 x1 대입
x(2)=x2; % x벡터의 인덱스 2에 x2 대입
err=1; % 초기 오차 설정
%% 2. 알고리즘 실행
while err > max_err % 오차가 최대 오차보다 작아지면 루프 중지
    n = n+1; % 카운터 1 증가
    if f(x(n-1))-f(x(n-2)) == 0 % 초기값의 중간값이 해일 때
        root = ((x(n-1))+(x(n-2)))/2; % 해 계산
        err = 0;
        return; % 스크립트 종료
    end
    k = (f(x(n-1))-f(x(n-2)))/(x(n-1)-x(n-2)); % 기울기 k 선언
    x(n)=x(n-1)-(f(x(n-1))/k); % 점화식 선언
    err = abs(f(x(n))); % 발생한 오차 계산
end
%% 3. 결과값 형변환
root = double(x(n)); % 결과값을 실수형으로 형변환(기존형 : rational)
err = double(err);
no_iter = n;
end