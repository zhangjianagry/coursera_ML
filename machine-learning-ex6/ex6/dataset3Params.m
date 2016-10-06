function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%%
% C_set = [];
% sigma_set = [];
% error_set = [];
% i = 1;
% while C<100
%     while sigma<100
%         model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%         predictions = svmPredict(model, Xval);
%         error = mean(double(predictions ~= yval));
%         fprintf('C = %f, sigma = %f, error = %f', C, sigma, error);
%         sigma = sigma * 2;
%         C_set(i) = C;
%         sigma_set(i) = sigma;
%         error_set(i) = error;
%         i = i + 1;
%     end
%     sigma = 0.01;
%     C = C * 2;
% end
%% Vector thought
% C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% sigma = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% error = 1;
% for i = 1:length(C)
%     for j = 1:length(sigma)
%         model = svmTrain(X, y, C(i), @(x1, x2) ...
%             gaussianKernel(x1, x2, sigma(j)));
%         predictions = svmPredict(model, Xval);
%         error_temp = mean(double(predictions ~= yval));
%         if error_temp<error
%             error = error_temp;
%             fprintf('C = %f, sigma = %f, error = %f\n', C(i), sigma(j), error);
%         end
%     end
% end


% =========================================================================

end
