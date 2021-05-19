#FACTORIZACIÓN PA = LU
function [L, U, w] = PA_LUFact(A)
%LUFACT: Factor the maxtrix A into LU up to a permutation.
%
%input arguments:
% A                     The matrix A to be factored
%
%output arguments:
% L                     A square lower triangular matrix with ones along
%                       the main diagonal.
% U                     An upper triangular matrix
% w                     A permutation vector.
    n = size(A, 1);
    L = eye(n);
    w = 1 : n;
    for k = 1 : n - 1       
        p = k;
        for j = k : n
            if abs(A(p, k)) < abs(A(j, k))
                p = j;
            end
        end
        
        if A(p, k) == 0
            printf("No admite fact LU")
            return
        end
        
        if p ~= k
            linP = A(p, :);
            A(p, :) = A(k, :);
            A(k, :) = linP;
            
            wP = w(p);
            w(p) = w(k);
            w(k) = wP;
            
            if k > 1
                subLinP = L(p, 1 : k - 1);
                L(p, 1 : k - 1) = L(k, 1 : k - 1);
                L(k, 1 : k - 1) = subLinP;
            end
        end
        
        for l = k + 1 : n
            L(l, k) = A(l, k) / A(k, k);
            A(l, :) = A(l, :) - L(l, k) * A(k, :);
        end
    end
    
    if A(n, n) == 0
            printf("No admite fact LU")
        return;
    end
    
    U = A;
end
