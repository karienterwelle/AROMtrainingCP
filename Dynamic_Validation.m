clear all; 
sim('Control_Scheme.slx')

% Obtaining time data
time = ans.yout{1}.Values.Time;
fs = time(9)-time(8);
% Obtaining mass data 
mass = ans.yout{1}.Values.Data; 

% Obtaining resistance force data
F_res = ans.yout{2}.Values.Data;

% Obtaining tracking data
theta_des = ans.yout{3}.Values.Data; 
theta_act = ans.yout{5}.Values.Data; 

figure; 
subplot(3,1,1); plot(time,mass, 'LineWidth', 2); title('Equivalent mass over time'); xlabel('Time (s)'); ylabel('Equivalent mass (kg)');
subplot(3,1,2); plot(time,F_res, 'LineWidth', 2); title('Resistance force over time'); xlabel('Time (s)'); ylabel('Resistance force (N)');
subplot(3,1,3); hold on; plot(time,theta_des, 'LineWidth', 1); plot(time,theta_act, 'LineWidth', 1); xline(4.5);  title('Tracking of theta over time'); xlabel('Time (s)'); ylabel('Theta (deg)'); legend('theta-desired', 'theta-actual');

RMSE_init = rmse(theta_act(1:687), theta_des(1:687));
RMSE_after = rmse(theta_act(687:end), theta_des(687:end)); 