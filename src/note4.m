%% Plotting


t = [0: 0.01: 0.98];
y1 = sin(2*pi*4*t);
y2 = cos(2*pi*4*t);

plot(t, y1);
hold on;           % this tells MATLAB "there are more to plot"
plot(t, y2, 'r');  % 'r' is red, which determins the color of the line

xlabel('time');   % name of the horizontal axis
ylabel('value');  % name of the vertical axis
title ('My Plot')
legend('sin', 'cos');  % put a legend at the upper right

print -dpng 'my_plot.png'  % output the plot as a .png file
% note that MATLAB can save figure as many other formats

close;  % get rid of the plot

m = [0: 0.01: 0.98];
n1 = sin(2*pi*4*m);
n2 = cos(2*pi*4*m);
% plot figures in different windows
figure(1); plot(m, n1);
figure(2); plot(m, n2);

% plot various figures in the same window
subplot(1, 2, 1);  % devides plot at a 1*2 grid, access the first element
plot(m, n1);
subplot(1, 2, 2);
plot(m, n2);
axis([0.5 1 -1 1]);  % scale the figure

clf;  % clear figure

%% plot matrix
imagesc(magic(5));  % display matrix with colors
colorbar;    % add a color bar
colormap summer;  % change color theme
