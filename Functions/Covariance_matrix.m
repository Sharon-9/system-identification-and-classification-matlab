function C = Covariance_matrix(Theta,y,n)
Hy=myHank(y,n);
H=horzcat(-Hy);
Htot =(H'*(H))
J =Loss_function(y,Theta)
C =(J)*(inv(Htot))  
end