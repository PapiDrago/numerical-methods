%U=[1 2 -2; 0 3 5; -2 5 -2];
%b=[-6; 7; -4];

function [x] = backward_substitution_method(U,b)
    n = length(b); %size(b) returns a row vector with the number of rows and cols of b
    x = zeros(n, 1);
    b(n) = b(n)/U(n,n);
    for i = n-1:1
        for j = i+1:n-1
            b(i) = b(i) - U(i,j)*b(j);
        end
        b(i)=b(i)/U(i,i);
    end
    x = b;
end
%the number of floating point operations is n^2.