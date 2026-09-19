function [J_1] = Grad1ClassCost_func(Phi,Y,Theta)
%computation of the gradient of the cost function.
N=length(Y);

z=Phi*Theta; 
fu=Sigmoid(z);

J_1 = Phi'*(fu-Y); 

end