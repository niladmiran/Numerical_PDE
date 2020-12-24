
N = 64;
Diagonal = diag(ones(63,1));
L = diag(ones(62,1),-1);
U = diag(ones(62,1),1);

R_G = (Diagonal-L) \ U;

[V, D] = eig(R_G);

iterations = zeros(63,1);


for i = 1:63
    v = V(:, i);
    while norm(v,inf)> 0.1
        v = R_G * v;
        iterations(i) = iterations(i) + 1;
    end
end

semilogy(iterations(2:end), 'LineWidth', 2);
legend('iterations of G-S method');
xlabel('index of eigenvectors');
ylabel('iterations');

