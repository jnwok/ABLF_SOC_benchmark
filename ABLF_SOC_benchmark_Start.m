%% Define my parameters

% Begin from here!!
% Run this code!

J = 1.8e-2;
R = 0.21;
L = 0.003;
Ke = 9.55e-3;
Kt = 9.55e-3;

f1 = 0;
g1 = 1;
g2 = Kt/J;
g3 = 1/L;

% Define Gains

k1 = 10;        %10 100 50
k2 = 1;
k3 = 10;

t2 = 0.05e-2;
t3 = 1e-2;

kerror=500;

kcl1 = -2;
kcl2 = 2;

ka1 = kcl1 - (-amp);
kb1 = kcl2 - (amp);

amp = pi/2;   %pi/2

% Alternate Parameters

% amp=pi;
% amp=1;
% ka1 = kcl1; 
% kb1 = kcl2; 

% f2 = -Tl/J;
% f3 = (-R*i_m/J)-Ke*omega_m/L;
% u = U;
% % Tl = 5000;          % to be estimated
% E = Ke*x2;
% x1 = theta;
% x2 = omega_m;
% x3 = i_m;
% k1 = 12;        %10 100 50
% k2 = 1;
% k3 = 10;
% t2 = 0.05e-2;
% t3 = 1e-2;


% Define Friction Observer Parameters
a = 2;    %2
k =2;
mu1 = 1.8;    %1.5
% mu1 = 2;
% Tl1 = 0.05;

t = 0:.0001:100;
y = (amp*square(2*pi*2*t)+amp)/2;
% y = (amp*square(2*pi*2*t));
pulseSig=[t' y'];



%% %%%%%%%%%%% SOC parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maxKp=100; minKp=0.01;
maxKi=1; minKi=0.01;
maxKd=100; minKd=0.001;

% %Globalized Constrained Nelder Mead GCNM parameters

GCNMEnable=1;
optimPeriod=0.5;        %optimization execution period (s)
resetThreshold=0.1;     %probabilistic restart threshold
refSignalPeriod=0.5;    %Reference signal period

% 
% %constraints limits
% 

OVLim=0.15;             %5% overshoot
TSLim=0.1;               %Settling time limit (s)
L=1;                  %delay value L=0.1,1,10;
N=100;                  %derivative filter N (Zero for PI controller)

% % cost function weights

W1 = 0.1;
W2 = 1;
W3 = 0.109;

% 
% % %% Run the Benchmark file
% % sim("SOCPIDControlBenchmark.slx")
% % 
% % % SOC PID time response and performance indices calculation

%% benchmarkFiguresSOC_PID

% sim('FISP_ABLF1_SOCtest1.slx')

% print('-sFISP_ABLF_SOCtest1.slx','-dpng','FISP_ABLF_SOCtest1.png')