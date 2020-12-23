%% re-implement the result of fig4.7

delta_x = [0.02, 0.01];
delta_t = delta_x;

%%  run upwind scheme
[u1, u_exact1] = upwind_scheme(delta_x(1), delta_t(1));
[u2, u_exact2] = upwind_scheme(delta_x(2), delta_t(2));


%% plot the result
% figure 1
subplot(4, 2, 1); % t=0, delta_x=0.02
% num_t = 1;
% plot_fig(num_t, x2, u1, u_exact1, delta_t(1), delta_x(1));


num_t = 1;
plot(x2, u1(:, num_t), 'linewidth', 2);
hold on
plot(x2, u_exact1(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(1)),', delta\_x=', num2str(delta_x(1))]);


% figure 2
subplot(4, 2, 2); % t=0, delta_x=0.02
% num_t = 1;
% plot_fig(num_t, x1, u2, u_exact2, delta_t(2), delta_x(2));
num_t = 1;
plot(x1, u2(:, num_t), 'linewidth', 2);
hold on
plot(x1, u_exact2(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(2)),', delta\_x=', num2str(delta_x(2))]);

%% t= 0.1
% figure 3
subplot(4, 2, 3); % t=0, delta_x=0.02
num_t = 6;
plot(x2, u1(:, num_t), 'linewidth', 2);
hold on
plot(x2, u_exact1(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(1)),', delta\_x=', num2str(delta_x(1))]);

% figure 4
subplot(4, 2, 4); % t=0, delta_x=0.02
num_t = 11;
plot(x1, u2(:, num_t), 'linewidth', 2);
hold on
plot(x1, u_exact2(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(2)),', delta\_x=', num2str(delta_x(2))]);

%% t= 0.5
% figure 5
subplot(4, 2, 5); % t=0, delta_x=0.02
num_t = 26;
plot(x2, u1(:, num_t), 'linewidth', 2);
hold on
plot(x2, u_exact1(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(1)),', delta\_x=', num2str(delta_x(1))]);

% figure 6
subplot(4, 2, 6); % t=0, delta_x=0.02
num_t = 51;
plot(x1, u2(:, num_t), 'linewidth', 2);
hold on
plot(x1, u_exact2(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(2)),', delta\_x=', num2str(delta_x(2))]);

%% t =  1.0
% figure 7
subplot(4, 2, 7); % t=0, delta_x=0.02
num_t = 51;
plot(x2, u1(:, num_t), 'linewidth', 2);
hold on
plot(x2, u_exact1(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t=', num2str((num_t-1)*delta_t(1)),', delta\_x=', num2str(delta_x(1))]);

% figure 8
subplot(4, 2, 8); % t=0, delta_x=0.02
num_t = 101;
plot(x1, u2(:, num_t), 'linewidth', 2);
hold on
plot(x1, u_exact2(:, num_t), '-o', 'linewidth', 2);
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);
xlabel('x');
ylabel('u');
grid on
title(['t= ', num2str((num_t-1)*delta_t(2)),', delta\_x=', num2str(delta_x(2))]);
