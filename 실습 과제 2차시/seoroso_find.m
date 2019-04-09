clear, clc;
N = input('서로소 탐색 최대값 N을 입력하시오 : ');
index=0;

for i=2:N
    for j = i+1:N
        if my_GCD3(i,j)==1
            index=index+1;
            seoroso(index,1)=i;
            seoroso(index,2)=j;
        end
    end
end

disp(N + "까지의 모든 서로소 쌍 : "); disp(seoroso);
disp(N + "까지의 모든 서로소 쌍의 개수 : " + index);