function p = predict(Theta1, Theta2, X)

X = [ones(size(X,1),1) X];
temp = sigmoid(X*Theta1');
temp = [ones(size(temp,1),1) temp];
[~, p] = max(sigmoid(temp*Theta2'), [], 2);

end
