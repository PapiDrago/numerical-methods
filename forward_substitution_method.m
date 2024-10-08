%L=[2 0 0; -1 1 0; -2 1 3];
%b=[2; 5; -11];

function [x] = forward_substitution_method(L,b)
%the syntax is function [output1, output2] = function_name(input1, input2)
    n = length(b); %size(b) returns a row vector with the number of rows and cols of b
    x = zeros(n, 1);
    b(1) = b(1)/L(1,1);
    for i = 2:n
        for j = 1:i-1
            b(i) = b(i) - L(i,j)*b(j);
        end
        b(i)=b(i)/L(i,i);
    end
    x = b;
end
%the number of floating point operations is n^2.