function [theta] = RLSII_AR(y,n)

N=length(y)-n;
theta=zeros(n,1); %initialize theta as a vector of zeros
R=eye(n);

for t = (n+1):(N+n)
  
    phi_p = flipud(y((t-n):(t-1))); %the matrix phi is construct
    phi = vertcat(-phi_p);
    
    % And the 4 steps of the RLSII are:
    R = ((t-1)/t)*R+((1/t)*(phi*phi'));  
    K = (1/t)*(inv(R))*phi;           
    epsilon = y(t)-(phi'*theta);       
    theta = theta+(K*epsilon);         
    
end
end