function [ AIC ] = AIC_criterion( y, theta)
N=length(y); 
p=length(theta); %the model complexity to consider is the lenght of theta
J=Loss_function(y,theta); % computation of the Loss function
AIC = N*log(J) + 2*p; 
end

