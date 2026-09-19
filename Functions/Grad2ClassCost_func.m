function [J_2] = Grad2ClassCost_func(Phi,Theta)
%Computation of the gsecond derivative of J
z=Phi*Theta;

fu = Sigmoid(z);
w = fu.*(1-fu);
W = diag(w); 

J_2 = Phi'*W*Phi;

end

