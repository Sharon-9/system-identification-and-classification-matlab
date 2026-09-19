function H = myHank(y,n)
% Hankel matrix
N = length(y); %number of samples
H=zeros(N-n,n); %initialize H as a matrix of zeroes
z = 1; %initialize the index z 

    %cycle to build the Hankel matrix
    for i = 1 : N - n 
        for j = n : -1 : 1 
           H(i, j)= y(z); 
           z = z + 1; 
        end     
        z = 1 + i; % shifting the elements 
    end
    
end