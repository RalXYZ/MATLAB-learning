%% Basic


%% arithmetic operations
2 + 3
4 - 5
2 * 3
6 / 4
2 ^ 8

% logic operations
1 == 2
1 ~= 2     % not equal sign
1 && 0     % AND
1 || 0     % OR
xor(1, 0)  % exclusive or


%% print
a = pi;
a
disp(a);  % display complex elements

% print with formatting
disp(sprintf('3 decimals: %0.3f', a));  % C-style 'sprintf'
fprintf('3 decimals: %0.3f\n', a);      % does the same thing as above

% set global output display format
format long
a
format short
a


%% matrices
A = [1 2; 3 4; 5 6]
A = [1 2;
     3 4;
     5 6]      % looks nicer :)
v = [1 2 3]    % row vector
v = [1; 2; 3]  % column vector

% define vector with step
v = 1:0.2:2
v = 1:6        % the default value of step is 1

% useful matrix functions
ones(2, 3)     % matrix with all 1s
zeros(2, 3)    % matrix with all 0s
rand(2, 3)     % matrix with random numbers between 0 and 1
randn(1, 5)    % 'n' means 'normal distribution'
hist(randn(1, 1000))  % show how function randn() works by plotting a histogram
eye(4)         % identity matrix

% matrix properties
size(A)
size(size(A))  % 'size(A)' is also a matrix
size(A, 1)     % the first dimension (row) of A
length(A)      % return the size of the longest dimension
