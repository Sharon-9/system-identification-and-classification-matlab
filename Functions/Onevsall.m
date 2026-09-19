function [Ytrain_j] = Onevsall(N,Y,c)
for i=1:N
    if Y(i)==c
        Ytrain_j(i,1) = 1;
        
    else if Y(i)~=c 
        Ytrain_j(i,1)=0;
    end
    end
end
end