%Akash Mitra
%am132
% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
% Variable y stores the sum of 1+1 as numerical values
% Variable b stores the sum of character 1. The output is the ASCII value
% of 'a' + 'a'
x = 1; 
y = x + x
%%
a = '1';
b = a+a
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 
% x2 creates a 1x2 array of two numeric characters 1 and 1 
% a2 creates a 1x2 array of two characters 1 and 1 (concatenate string)
%x2 is a 1x2(two rows) array while x2b is 2x1 (2 columns)
x2 = [x x]

a2 = [a a]

x2b = [x; x]

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
% a==b returns a logical array; 1 when equal, 0 when not. In the first case
% the arrays are clearly different so we get the logical 0 as the answer.
% Following which, the value of b is conferred on to a. The next check
% returns a logical vector of 0 1 0 where the match does occur.

a = 1; b =2; 


a == b
a = b;
a == b



%explain the results of the following operations:
% Looks for equality between the two vectors. Produce a 1x3 logical array
% for 1 where the '2's match and 0 where the end points of the vector do
% not match
a = [1, 2, 4];
b = [0,2,7];
a == b

%explain why this gives an error:
% Error mbecause matrix dimensions are not the same
b = [2, 3];
a == b

%explain why this does not give an error
% equality operator can work on 1 number and treat as one dimensional
% vector and compare to each element of other vectors, as compared to vectors of different lengths
b = 2;
a == b 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
% Second one works by using the first array and adding 10 to every element
% of the first array
1:20
[oneToTen, oneToTen+10]
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
oneToTen = [oneToTen, oneToTen+10]
evenIndices = rem(oneToTen, 2) == 0
allEven = oneToTen(evenIndices)

x = 0:2:20

% 2. odd numbers from one to nineteen

oddIndices = rem(oneToTen, 2) == 1
allOdd = oneToTen(oddIndices)

y = 1:2:20
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

reveOneToTen = fliplr(allEven)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
% fliplr doesn't work with anything but a 2D matrix. oneToTen is now
% complex conjugate transpose
% flipud works 
oneToTen = oneToTen';
fliplr(oneToTen)
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
% first produces vector multiplication product 
% second produces element wise product
m1*m2
m1.*m2

%explain this command:
% produces element wise division
m2./m1
%extra credit: explain why this command gives a warning:
% tries to prevent rounding off errors when working with precision
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines
% accessing row 2 element 3
rand_nums(2,3)

%rows 2 through 4, column 3
rand_nums(2:4,3)

% rows 1 and 2, elements 3 and 4 respectively
rand_nums(1:2,3:4)

% all of column 2
rand_nums(:,2)

% all of column 1
rand_nums(1,:)

% displays columns 1,3 and 5 in entirety
rand_nums(:,[1 3 5])


