% %% plot ABLF_without SOC data

% close all

% Uncomment on the figure and appropriate parameters to plot

% time=FISP_ABLF.time;
% 
% x1=FISP_ABLF.Data(:,1); 
% yd=FISP_ABLF.Data(:,2);
% 
% Tl1=FISP_ABLF.Data(:,7);
% Tl=FISP_ABLF.Data(:,8);
% 
% Ts=0.0001;
% 
% figure(1)
% plot(time,[yd x1])
% title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% set(gca,'FontSize', 12);
% 
% figure(2)
% plot(time(30/Ts:35/Ts),[yd(30/Ts:35/Ts) x1(30/Ts:35/Ts)])
% xlim([30 35]);
% title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% set(gca,'FontSize', 12);
% 
% figure(3)
% plot(time(25.663/(Ts):25.68/(Ts)),[Tl1(25.663/(Ts):25.68/(Ts)) Tl(25.663/(Ts):25.68/(Ts))])
% ylim([-2.5 2.5]);
% xlim([25.663 25.68]);
% title('Friction Estimator');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% set(gca,'FontSize', 12);
% 
% figure(4)
% plot(time(25.663/(Ts):25.673/(Ts)),[Tl1(25.663/(Ts):25.673/(Ts)) Tl(25.663/(Ts):25.673/(Ts))])
% ylim([-2.5 2.5]);
% xlim([25.663 25.673]);
% title('Friction Estimator');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% set(gca,'FontSize', 12);



%% Plot ABLF_with SOC

% Uncomment on the figure and appropriate parameters to plot

% time=FISP_ABLF.time;
% 
% x1=FISP_ABLF.Data(:,1); 
% yd=FISP_ABLF.Data(:,2);
% 
% k1=FISP_ABLF.Data(:,3);
% k2=FISP_ABLF.Data(:,4);
% k3=FISP_ABLF.Data(:,5);
% convJ=FISP_ABLF.Data(:,6);
% 
% Ts=0.0001;
% 
% figure(1)
% plot(time,[yd x1])
% title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% set(gca,'FontSize', 12);
% 
% figure(2)
% plot(time(25/Ts:30/Ts),[yd(25/Ts:30/Ts) x1(25/Ts:30/Ts)])
% title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
% legend('Reference','Tracking');
% xlim([25 30]);
% set(gca,'FontSize', 12);
% 
% figure(3)
% plot(time,[k1 k2 k3])
% title('Optimal Tuning Knob ');xlabel('Time (s)'); ylabel('Tuning Knob')
% legend('k1','k2','k3');
% ylim([-5 100]);
% set(gca,'FontSize', 12);
% % 
% figure(4)
% plot(time, convJ)
% title('Cost Function Convergence');xlabel('Time (s)'); ylabel('Cost J')
% ylim([-0.5 11])
% set(gca,'FontSize', 12);


%% SOD Plots

time=SOD_FISP.time;

x1=SOD_FISP.Data(:,1); 
yd=SOD_FISP.Data(:,2);

Tl1=SOD_FISP.Data(:,3);
Tl=SOD_FISP.Data(:,4);

% Tl1=SOD_FISP.Data(:,7);
% Tl=SOD_FISP.Data(:,8);

Ts=0.0001;

figure(1)
plot(time,[yd x1])
title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
legend('Reference','Tracking');
set(gca,'FontSize', 12);

figure(2)
plot(time(25/Ts:30/Ts),[yd(25/Ts:30/Ts) x1(25/Ts:30/Ts)])
xlim([25 30]);
title('Position Tracking Response');xlabel('Time (s)'); ylabel('Position')
legend('Reference','Tracking');
set(gca,'FontSize', 12);

figure(3)
plot(time(25.663/(Ts):25.68/(Ts)),[Tl1(25.663/(Ts):25.68/(Ts)) -Tl(25.663/(Ts):25.68/(Ts))])
ylim([-2.5 2.5]);
xlim([25.663 25.68]);
title('Friction Estimator');xlabel('Time (s)'); ylabel('Position')
legend('Reference','Tracking');
set(gca,'FontSize', 12);
 