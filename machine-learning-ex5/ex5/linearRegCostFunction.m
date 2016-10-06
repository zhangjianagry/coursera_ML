function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
% The cost function J
J = J + sum((X*theta - y).^2)/(2*m);
theta_reg = theta .* [0; ones(length(theta) - 1, 1)];
reg_term = (lambda*sum(theta_reg.^2))/(2*m);
J = J + reg_term;

% The gradient of J
grad = grad + X'*(X*theta - y)/m;
grad = grad + lambda * theta_reg/m;











% =========================================================================

grad = grad(:);

end
