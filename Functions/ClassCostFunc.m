function [J] = ClassCostFunc(Phi,Theta,Y) 
%computation of the cost function
N=length(Y);
z=Phi*Theta;
J=0;
%Initialize J=0, then for each iteration of the cycle we add the value of J
%at that sample of time to the previous ones
for t=1:N

    fu=Sigmoid(z(t));         %compute the sigmoid function of z at the time t
    log_Py=[Y(t).*log(fu)];   
    a=[(1- Y(t)).*log(1-fu)];
    J=(J+log_Py+a);           %Iteration of J

end
end