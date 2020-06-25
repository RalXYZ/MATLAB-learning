%% Data

% load and save
load myMatrix.dat                % a matrix named 'matrix' will be loaded from this file
load('myMatrix.dat')             % you can also load by this function
save anotherMatrix.mat myMatrix  % save as a binary file
save anotherMatrix.txt myMatrix -ascii  % save as a text file (human-readable)

% matrix index
v = myMatrix(1:3)   % copy the 1*3 part of 'matrix'
myMatrix(3, 2)      % get the element at the third row and the second column
myMatrix(3, :)      % ':' means every element along that row or column
myMatrix([1 3], :)  % get every element at the first row and the third row
myMatrix(:)         % put all elements into a single vector

% matrix assignment with indexing
tempMatrix = myMatrix
myMatrix(:, 3) = [100; 101; 102; 103]  % assign a column vector
[myMatrix, [200; 201; 202; 203]]       % append another column vector to right

[tempMatrix myMatrix]   % append matrices, 'myMatrix' on the right
[tempMatrix; myMatrix]  % now 'myMatrix' is at the bottom

% variable properties
who   % shows the name of all variables
whos  % shows the detail of every variable

% clear
clear v  % clear variable 'v'
clear    % clear all the variables in the workspace
