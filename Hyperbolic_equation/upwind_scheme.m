%%% This script aims to re-implement the result of Fig 4.6
%%% in the text

function [u, u_exact] = upwind_scheme(delta_x, delta_t)
    x = 0: delta_x : 1;
    t = 0: delta_t : 1.0;
    len_x = length(x);
    len_t = length(t);
    
    % initialize with (4.34a)
    u = zeros(len_x, len_t);
    for i = 1:len_x
        if x(i) >= 0.2 && x(i) <= 0.4
            u(i, 1) = 1.0;
        end
    end

    % initialize with (4.34b)
    u(1, :) = 0.0;

    % exact solution
    u_exact = u;
    for k = 2: len_t    % t axis
        for j = 2 : len_x -1 % x axis
            % current position (j, k)
            % exact solution
            x_star = x(j) - t(k) / (1 + x(j)^2);
            if x_star >= 0.2 && x_star <= 0.4
                u_exact(j, k) = 1.0;
            end
        end
    end


%% run algorithms
    for k = 2: len_t    % t axis
        for j = 2 : len_x -1 % x axis
            % current position (j, k)
            % upwind scheme
            a = (1 + x(j)^2) / (1 + 2*x(j) + x(j)^4 + 2*x(j)* t(k-1));
            v = a * delta_t / delta_x;
            if a < 0
                u(j, k) = (1+v)*u(j, k-1) - v * u(j+1, k-1);
            elseif a > 0
                u(j, k) = (1-v)*u(j, k-1) + v * u(j-1, k-1);
            end
        end
    end
end


    







