% this file is only for test purpose and running test scripts

p = zeros(size(X, 1), 1);

X = [ones(m,1) X];
a2 = sigmoid(X*Theta1');

a2 = [ones(m,1) a2];
a3 = sigmoid(a2 * Theta2');
h=a3;

% [val,h] = max(a3, [], 2);

% Now lets expand the h vector to h matrix of 5K x 10
[numrows,numcol]=size(h);
hnew = zeros(numrows, 10);

for r = 1: numrows
    index = h(r);
    hnew(r, index)=1;
end

% Now lets expand the y vector to y matrix of 5K x 10
[numrows,numcol]=size(y);
ynew = zeros(numrows, 10);

for r = 1: numrows
    index = y(r);
    ynew(r, index)=1;
end

J = (1/m) * sum ( sum ( (-ynew) .* log(hnew) - (1-ynew) .* log(1-hnew) ));
