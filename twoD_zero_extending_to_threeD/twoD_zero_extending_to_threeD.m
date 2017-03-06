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

% create an array of zeros using A( max1, max2 )
A = zeros( 73, 365);    %z = current
B = zeros( 73, 132 );   %z = RPM
C = zeros( 132, 365 );  %z = Torque

%% map currents at respective torque, rpm coordinates
A( 11,61 ) = 1;
A( 12,92 ) = 2;
A( 25, 205 ) = 25;
A( 32,232 ) = 37;
A( 39,258 ) = 49;
A( 45,279 ) = 62;
A( 53,302 ) = 78;
A( 60,325 ) = 95;
A( 67,346 ) = 113;
A( 73,365 ) = 132;

figure
hold on
mesh(A)
hold off
title( 'Current = A( Torque, RPM mesh' )
xlabel( 'torque (lb/ft)' )
ylabel( 'rpm' ) 
zlabel( 'Current (A)' )

figure
hold on
surf(A)
hold off
title( 'Current = A( Torque, RPM surface' )
xlabel( 'torque (lb/ft)' )
ylabel( 'rpm' ) 
zlabel( 'Current (A)' )

% figure
% hold on
% plot3(A)
% hold off
% title( 'Current = A( Torque, RPM plot3' )
% xlabel( 'torque (lb/ft)' )
% ylabel( 'rpm' ) 
% zlabel( 'Current (A)' )

figure
hold on
waterfall(A')
hold off
title( 'Current = A( Torque, RPM waterfall' )
xlabel( 'torque (lb/ft)' )
ylabel( 'rpm' ) 
zlabel( 'Current (A)' )

%% map RPMs at respective torque, current coordinates
B( 11,1) = 61;
B( 12,2) = 92;
B( 25, 25) = 205;
B( 32,37) = 232;
B( 39,49) = 258;
B( 45,62) = 279;
B( 53,78) = 302;
B( 60,95) = 325;
B( 67,113) = 346;
B( 73,132) = 365;

figure
hold on
mesh(B)
hold off
title( 'RPM = A( Torque, Current) mesh' )
xlabel( 'torque (lb/ft)' )
ylabel( 'Current (A)' )
zlabel( 'rpm' ) 

figure
hold on
surf(B)
hold off
title( 'RPM = A( Torque, Current) surface' )
xlabel( 'torque (lb/ft)' )
ylabel( 'Current (A)' )
zlabel( 'rpm' ) 

% figure
% hold on
% plot3(B)
% hold off
% title( 'RPM = A( Torque, Current) plot3' )
% xlabel( 'torque (lb/ft)' )
% ylabel( 'Current (A)' )
% zlabel( 'rpm' ) 

figure
hold on
waterfall(B')
hold off
title( 'RPM = A( Torque, Current) waterfall' )
xlabel( 'torque (lb/ft)' )
ylabel( 'Current (A)' )
zlabel( 'rpm' ) 

%% map Torue at respective current, rpm coordinates
C( 1,61) = 11;
C( 2,92) = 12;
C( 25,205) = 25;
C( 37,232) = 32;
C( 49,258) = 39;
C( 62,279) = 45;
C( 78,302) = 53;
C( 95,325) = 60;
C( 113,346) = 67;
C( 132,365) = 73;

figure
hold on
mesh(C)
hold off
title( 'Torque = A( Current, RPM ) mesh' )
xlabel( 'Current (A)' )
ylabel( 'rpm' ) 
zlabel( 'torque (lb/ft)' )

figure
hold on
surf(C)
hold off
title( 'Torque = A( Current, RPM ) surface' )
xlabel( 'Current (A)' )
ylabel( 'rpm' ) 
zlabel( 'torque (lb/ft)' )

% figure
% hold on
% plot3(C)
% hold off
% title( 'Torque = A( Current, RPM ) plot3' )
% xlabel( 'Current (A)' )
% ylabel( 'rpm' ) 
% zlabel( 'torque (lb/ft)' )

figure
hold on
waterfall(C')
hold off
title( 'Torque = A( Current, RPM ) waterfall' )
xlabel( 'Current (A)' )
ylabel( 'rpm' ) 
zlabel( 'torque (lb/ft)' )





