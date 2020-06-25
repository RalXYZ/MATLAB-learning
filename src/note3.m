%% Computing on matrix


% initialization
A = [1 2; 3 5; 6 4]
B = [0 1; 7 8; 9 10]
C = [1 1; 2 2]
v = [1.5, 0.5, 4.5]

A * C  % matrix multiplication

% element-wise operations
A .* B  % element-wise multiplication
A .^ 2  % element-wise squaring
1 ./ A  % element-wise inverse
log(v)
exp(v)
abs([-1; 2; -3])
-v  % opposite
v + ones(1, length(v))  
v + 1  % the same as above

% inverse and transpose
A'  % transpose matrix
(A')
pinv(A)  % pseudo-inverse matirx (can inverse even if it is not a square)

% max
max(v)
[val, ind] = max(v)
max(A, B)      % element-wise max
max(A, [], 1)  % take max along the row
max(A)         % same as above
max(A, [], 2)  % take max along the column
max(max(A))    % the max element of A

% compare
v <= 2  % return a 0-1 matrix
find(v <= 2)

% round up and round down
floor(v)  % round up
ceil(v)   % round down

% sum and product
sum(v)
prod(v)       % product
D = magic(3)  % generate a matrix that each row, column and diagonales all add up to the same value
[row, column] = find(D >= 7)
sum(D, 1)     % column-wise sum
sum(D, 2)     % row-wise sum
