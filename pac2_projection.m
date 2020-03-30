%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program demonstrate the projection of 3d vectors 
% Written by: Sarah Ceu
% Last update: 29-3-2020
% For further explaination, see http://2kiloapple.net/pca2/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;

N = 3;% length of sample vector
M = 20; % num of samples

X1 = [2; 3; 2] + 2 * rand([3, M/2]); % samples of class 1
X2 = [2; 2; 3] + 2 * rand([3, M/2]); % samples of class 2

% load('X1X2'); % You can save your own dataset

% plot original dataset
subplot(1, 2, 1);
scatter3(X1(1,:), X1(2,:), X1(3,:), 'ro','LineWidth',1.5);
hold on
axis equal
scatter3(X2(1,:), X2(2,:), X2(3,:), 'bo','LineWidth',1.5);
axis([0 6 0 6 0 5]);

% projection vectors
V = [1 0 0; 0 1 0];

Y1 = V * X1;
Y2 = V * X2;

scatter3(Y1(1,:), Y1(2,:), zeros([1, M/2]), 100, 'r.');
scatter3(Y2(1,:), Y2(2,:), zeros([1, M/2]), 100, 'b.');

line([X1(1,:); Y1(1,:)], [X1(2,:); Y1(2,:)], [X1(3,:); zeros([1, M/2])], 'Color', 'black');
line([X2(1,:); Y2(1,:)], [X2(2,:); Y2(2,:)], [X2(3,:); zeros([1, M/2])], 'Color', 'black');

% plot projected vectors
subplot(1, 2, 2)
scatter(Y1(1,:), Y1(2,:), 300, 'r.');
hold on
axis equal
axis([0 6 0 6]);
grid on
scatter(Y2(1,:), Y2(2,:), 300, 'b.');
