function [J] = Loss_function(y,theta)
N=length(y);
p=length(theta);
n=p;
Hy=myHank(y,n);
H = horzcat(-Hy);
Y = y(n+1:end);
J=(1/(N-n))*(Y-(H*theta))'*(Y-(H*theta));
end

