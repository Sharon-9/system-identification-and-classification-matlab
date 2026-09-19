function [ e ] = Residual(y,Theta)
n=length(Theta);
Hy = myHank(y,n);
H = horzcat (-Hy); %for the AR model the Hankel is p=n
e=(y(n+1:end)-H*Theta); %prediction error

end