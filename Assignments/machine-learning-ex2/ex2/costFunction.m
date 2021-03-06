function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particuly
% Note: grad should have the same dimensions as theta
 

sig = sigmoid(X * theta) ;
for i = 1:m
	hxi = sigmoid(theta' * (X(i,:))') ;	
	J = J - 1/m*(y(i)*log(hxi) + (1 - y(i))*log(1 - hxi)) ; 
end


grad = 1 / m * ((sig - y)' * X)';

% =============================================================

end
