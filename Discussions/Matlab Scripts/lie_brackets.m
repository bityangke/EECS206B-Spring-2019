%% Calculating Lie Brackets with Matlab's Symbolic Math Toolbox

% First define the dynamics of a unicycle model
syms x y theta real

q = [x; y; theta];
g1 = [cos(theta); sin(theta); 0];
g2 = [0; 0; 1];

lie = @(f, g, q) jacobian(g, q)*f - jacobian(f, q)*g;

g3 = lie(g1, g2, q)

% Demonstrate that the basis [g1, g2, g3] forms a lie algebra

lie(g1, g2, q)
lie(g1, g3, q)
lie(g2, g3, q)

