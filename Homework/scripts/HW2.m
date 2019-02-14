M = 10;
m = 1;
L = 0.3;
g = 9.81;	


function dx = inverted_pendulum_control(x,F)
	M = 10;
	m = 1;
	L = 0.3;
	g = 9.81;	

	A = [0, 0, 1, 0; 0, 0, 0, 1; g/L + m*g/(M*L), 0, 0, 0; m*g/M, 0, 0, 0];
	B = [0; 0; 1/L/M];
	
	F = -diag([kp,kp,kd,kd])*x
	dx = A*x + B*F;
end