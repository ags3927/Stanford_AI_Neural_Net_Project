function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
X = [ones(m, 1) X];
[~, p] = max(all_theta*X', [], 1);

end
