function [H_0,m_bar,m]=Anderson_whiteness(epsilon,alpha)
N=length(epsilon);
epsilon=epsilon-mean(epsilon);
r_hat=autocorr(epsilon);
r_hat0=r_hat(1); 

g=r_hat(2:end)/r_hat0; 
m=length(g);
nf = norminv(1-(alpha/2),0,1); %normalized func with mean=0 and standard deviation=1
m_bar=0;char H_zero;
     for t=1:m 
        if abs(g(t)*sqrt(N))>(nf)
        m_bar=m_bar+1;   
        end
     end 
    if (m_bar/m)<= alpha
    H_0='accepted';
    else 
    H_0='rejected';
    end
    
end