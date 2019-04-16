%% 0. 이분법을 활용한 방정식의 해 찾기 스크립트
clear, clc;
%% 1. 선언 및 입력
syms x; % x는 함수의 정의역
f(x) = input('계산할 x에 관한 방정식을 입력하시오 : '); % 방정식 f(x) 입력
disp("초기값 x1과 x2의 조건 : f(x1)*f(x2) <= 0"); % 초기값 조건 출력
x1 = input('초기값 x1 입력 : '); % 초기값 x1 입력
x2 = input('초기값 x2 입력 : '); % 초기값 x2 입력
max_err = input('허용할 최대 오차 입력 : '); % 최대오차 입력
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
    disp("정확한 해를 찾았습니다!"); % 메시지 출력
    disp("정확한 해 = " + xmid); % 정확한 해 출력
    return; % 스크립트 실행 중지
else  % 이도 저도 아니면 (=오류)
    disp("오류 발생! x1과 x2를 제대로 입력해주세요."); % 메시지 출력
    return; % 스크립트 실행 중지
end
root = xmid; % 결과값 대입
err = abs(f(root)); % 오차 계산
end
%% 3. 결과값 형변환 및 출력
err_output = double(err); % 오차값 실수형으로 형변환
disp("연산을 반복한 횟수 no_iter = " + no_iter); % 반복 횟수 출력
disp("해의 근사값 root"); root
disp("발생한 오차 err"); err_output