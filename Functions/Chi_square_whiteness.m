function [Ho]=Chi_square_whiteness(epsilon,alpha,m)
%Chi-square whiteness test
N=length(epsilon);
epsilon=epsilon-mean(epsilon);
r = autocorr(epsilon,NumLags=m);

r_hat0=r(1);
r_hat_tau=r(2:end);

x=N*(((r_hat_tau')*r_hat_tau)/(r_hat0^2)); %calculate x
%Test the value of x
char Ho;
if x<= chi2inv(1-alpha,m)
    Ho='accepted';
else 
    Ho='rejected';
end
end

