function [J, grad] = lrCostFunction(theta, X, y, lambda)

m = length(y);
J = 0;
grad = zeros(size(theta));
h = sigmoid(X*theta);
J = sum(-y.*log(h)-(1-y).*log(1-h))/m + (lambda/(2*m))*...
    (sum(theta(2:size(theta(:,1)),:).^2));
grad = (X'*(h-y))/m;
temp0 = grad(1);
grad = grad + (lambda/m)*theta;
grad(1) = temp0;

end