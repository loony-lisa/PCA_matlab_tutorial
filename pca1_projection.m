%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program demonstrate the projection of 2d vectors 
% Written by: Sarah Ceu
% Last update: 29-3-2020
% For further explaination, see http://2kiloapple.net/pca/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N = 2; % length of sample vector
M = 10; % num of samples

X = rand([N, M]); % sample matrix
scatter(X(1,:), X(2,:), '*'); % plot all samples

v = [1, 1]; % vector for projection
Y = v * X ./ (norm(v)^2) .* v'; % vectors project on [1, 1] 

hold on 
% plot the vector after projection
scatter(Y(1,:), Y(2,:), '.') 

axis equal

% plot projection lines
line([X(1,:); Y(1,:)], [X(2,:); Y(2,:)], 'Color', 'black'); 