% Define my parameters

% Begin the SLDO from here!!
% Run this code to begin!

J = 1.8*10^(-2);
R = 0.21;
L = 0.003;
Ke = 9.55*10^(-3);
Kt = 9.55*10^(-3);

f1 = 0;
g1 = 1;
g2 = Kt/J;
g3 = 1/L;

% Define the gains

k1 = 6.2718;
k2 = 2.3993e+03;
k3 = 31.9167;

t2 = 0.012;
t3 = 0.012;

% Define the saturation limit

kcl1 = -2;
kcl2 = 2;

amp = pi/2;

ka1 = kcl1 - (-amp);
kb1 = kcl2 - (amp);

% u = U;

% f2 = -Tl/J;
% f3 = (-R*i_m/J)-Ke*omega_m/L;

% Tl = 5000;          % to be estimated
% E = Ke*x2;

% x1 = theta;
% x2 = omega_m;
% x3 = i_m;

% k1 = 10;                  %7.21 147 18.1
% k2 = 1;                    
% k3 = 10;

% k1 = 7.21;
% k2 = 147;
% k3 = 18.1;

% Simulink Response optimization parameter
% k1 = 8.2506;                  
% k2 = 1.1295e+06;                    
% k3 = 0;

% t2 = 0.0122;
% t3 = 0.0122;

% t2 = 0.05e-2;
% t3 = 1e-2;

% ka1 = kcl1; 
% kb1 = kcl2; 

% Define Friction Observer Parameters

a = 2;          %20
k = 2;          %20
mu1 = 1.8;      %2

t = 0:.0001:100;
% y = amp*square(2*pi*0.1*t);
y = (amp*square(2*pi*2*t)+amp)/2;

pulseSig = [t' y'];

% Tl1 = 0.05;

% u = (1/g3)*(-k3*S3-f3-g2*S2-X3/t3);

% maxKp=10; minKp=0.01;
% maxKi=150; minKi=0.001;
% maxKd=200; minKd=0.001;

% %% SOC PID benchmark configuration file
% %initial condition PID control
% 
% kpo=0.2;
% kio=0.6;
% kdo=0.1;

% PID controller gains limits

% maxKp=10; minKp=0.01;
% maxKi=150; minKi=0.001;
% maxKd=200; minKd=0.001;
% 
% %Globalized Constrained Nelder Mead GCNM parameters
% 
% GCNMEnable=1;
% optimPeriod=10;        %optimization execution period (s)
% resetThreshold=0.1;     %probabilistic restart threshold
% refSignalPeriod=10;    %Reference signal period
% 
% %constraints limits
% 
% OVLim=0.15;             %5% overshoot
% TSLim=0.2;               %Settling time limit (s)
% L=1;                  %delay value L=0.1,1,10;
% N=100;                  %derivative filter N (Zero for PI controller)
% 
% % cost function weights
% 
% W1 = 0;
% W2 = 5;
% W3 = 0;

% 
% % %% Run the Benchmark file
% % sim("SOCPIDControlBenchmark.slx")
% % 
% % % SOC PID time response and performance indices calculation
% % benchmarkFiguresSOC_PID
% sim('FISP_ABLF1.slx')



