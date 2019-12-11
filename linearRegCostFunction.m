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

predict=X*theta;
sqrerror=(predict-y).^2;
J1=1/(2*m)*sum(sqrerror);
temp=theta.^2;
temp(1)=0;
J2=lambda/(2*m)*sum(temp);
J=J1+J2;
#now grad computation
m = length(y);

g=(X')*(X*theta-y);
temp3=zeros(size(theta));
temp3(2:length(theta))=lambda.*theta(2:length(theta));
grad=(1/m)*(g.+temp3);















% =========================================================================

grad = grad(:);

end
