%% drive cycles
nedc.data=xlsread("nedc.xlsx");
nedc.time=1:1180;
%plot(nedc.time,nedc.data);


%% vehicle parameters
rw=0.32; %m teker yarıçapı 
m=1500; %kg 
me=1.02*m; %kg
f=0.01; 
cd=0.28;
A=2.27; %m2
transmission=7.524;

%% ambient parameters 
ro_air=1.2;
g=9.81;
%% eff_map
eff_map.data=xlsread('C:\Program Files\MATLAB\R2020b\bin\eff_map.xlsx');
eff_map.torque=eff_map.data(2:17,1);
eff_map.speed=eff_map.data(1,2:17);
eff_map.efficiency=eff_map.data(2:17,2:17);
%% batt parameters
v_ocv=350; %v
bat_capacity=36*36*(10^5); %Ws
bat_eff=0.92;
r_int=0.1; %ohm
p_aksesuar=4000; %W

%% run
drive_time=1180;
sim('C:\Users\amnessa\Desktop\Matlab_simulink_projects\surus_cevrimi');

