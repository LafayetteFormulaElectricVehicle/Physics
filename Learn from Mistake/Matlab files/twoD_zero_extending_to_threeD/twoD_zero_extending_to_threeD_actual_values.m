%% zero extending the 2-d data plots to plot 3-d
% dyno data collected at 100% load
% Torque = [1.0756; 1.2392; 2.5272; 3.23; 3.8744; 4.46; 5.28; 5.984; 6.744; 7.328];
% RPM = [610; 917; 2049; 2324; 2582; 2790; 3015; 3249; 3455; 3650];
% Current = [1; 2; 25; 37; 49; 62; 78; 95; 113; 132];
% Voltage = [86.7; 86.7; 86.7; 86.7; 86.7; 86.7; 86.7;  86.7;  86.4; 86.4];

Torque1 = [1.0756; 1.2392; 2.5272; 3.23; 3.8744; 4.46; 5.28; 5.984; 6.744; 7.328];
RPM1 = [610; 917; 2049; 2324; 2582; 2790; 3015; 3249; 3455; 3650];
Current1 = [1; 2; 25; 37; 49; 62; 78; 95; 113; 132];
Voltage1 = [86.7; 86.7; 86.7; 86.7; 86.7; 86.7; 86.7;  86.7;  86.4; 86.4];

% Dyno data collected at 90% load
Torque2 = [.9464; 1.0048; 1.0632;  1.1804; 1.4732; 2.5272; 3.8744; 4.52; 5.22; 5.924; 6.744; 7.448; 8.092; 8.912; 9.612];
RPM2 = [324; 428; 620; 820; 1308; 1810; 2238; 2427; 2595; 2796; 2993; 3150; 3282; 3459; 3608];
Current2 = [2 ;1;0;1;5;20;41; 52;65; 80;97;112;127;146;165];

% Dyno data collected at 80% load
Torque3 = [.8876; .9464;1.0632;1.1212;1.532;2.6444;3.992;4.576;5.28;5.984;6.804;8.148;8.968];
RPM3 = [232;430;624;822;1090;1479;1840;1976;2116;2296;2411;2640;2775];
Current3 = [4;3;1;0;2;14;31;40;50;62;75;101;116];

%% create function A( max1, max2) = zeros(max1,max2)
% where A(m,n), mis torque and n is rpm to result in current I
% rounding torque after multiply by 10
% rounding rpm after dividing by 10

m = [11; 12; 25; 32; 39; 45; 53; 60; 67; 73];    %torque T_1 - T_10
n = [61; 92; 205; 232; 258; 279; 302; 325; 346; 365];    %rpm RPM_1 - RPM_10
o = [1; 2; 25; 37; 49; 62; 78; 95; 113; 132];    %current I_1 - I_10

%% 2-D Interpolation
% Using DC motor equation for Torque: 
% T_L = kt*Current-f*RPM
P = -2.5 + 5*gallery('uniformdata', [200 2],0); 

% use rounded values of RPM
o = P(:,1);
n = P(:,2);
T1 = kt*o - f*n;

% use actual values for RPM
Current = P(:,1);
RPM = P(:,2);
T2 = kt*Current - f*RPM;


% Create the interpolant
Z1 = scatteredInterpolant( o, n, T1 );
Z2 = scatteredInterpolant( Current, RPM, T2 );

% Evaluate the interpolant at query locations (Current_q, RPM_q)
ti2 = -5:.25:5;
ti = -5:.25:5;
[o_q, n_q] = meshgrid( ti, ti2 );
[Current_q, RPM_q] = meshgrid( ti, ti2 );
T_q1 = Z( o_q, n_q );
T_q2 = Z( Current_q, RPM_q );

% Plot the result
figure
mesh( o_q, n_q, T_q1 );
hold on;
plot3( o, n, T1, 'o' );
hold off;
title( '2-D Interpolation of Torque (rounded RPM)' )
xlabel( 'Current (A)' )
ylabel( 'RPM' )
zlabel( 'Torque (lb/ft)' )

figure
mesh( Current_q, RPM_q, T_q2 );
hold on;
plot3( Current, RPM, T2, 'o' );
hold off;
title( '2-D Interpolation of Torque (actual RPM)' )
xlabel( 'Current (A)' )
ylabel( 'RPM' )
zlabel( 'Torque (lb/ft)' )