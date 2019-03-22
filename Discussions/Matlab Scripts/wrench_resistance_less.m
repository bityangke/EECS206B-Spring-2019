%% Grasp Map calculation from Discussion 9

% Here's a useful function
hat = @(w) [0, -w(3), w(2); w(3), 0, -w(1); -w(2), w(1), 0];

% We define the object frame as coincident with the world frame

% We have an antipodal grasp

B1 = [[eye(3); zeros(3)] [0;0;0;0;0;1]];
B2 = [[eye(3); zeros(3)] [0;0;0;0;0;1]];

poc1 = [ -1; 0; 0 ];
Roc1 = [ 0, 0, 1; 0, 1, 0; -1, 0, 0 ];

poc2 = [ 1; 0; 0 ];
Roc2 = [ 0, 0, -1; 0, 1, 0; 1, 0, 0];

Adj1inv = [Roc1', -Roc1'*hat(poc1); zeros(3), Roc1];
Adj2inv = [Roc2', -Roc2'*hat(poc2); zeros(3), Roc2];

G1 = Adj1inv'*B1;
G2 = Adj2inv'*B2;

G = [G1, G2];

% We can compute force closure or gravity resistance by looking at G
% If we span Rn (with the condition that f3 and f7 are positive) then we're
% in force closure. For computing resistance to a force, you'll need to do
% some optimization. Unfortunately, we've realizatd that giving you that 
% optimization code would be a bit too close to giving you the lab 
% solutions, so this is all we'll provide.


        






