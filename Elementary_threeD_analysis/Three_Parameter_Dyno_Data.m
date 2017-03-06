%% 3 parameters
% order dyno torque, rpm, current
% Dyno data at 100% load
Dat_3_100L = [1.0756 610 1; 1.2392 917 2; 2.5272 2049 25; 
    3.23 2324 37; 3.8744 2582 49; 4.46 2790 62; 
    5.28 3015 78; 5.984 3249 95; 6.744 3455 113; 
    7.328 3650 132];
% just ploting various 2d plots and forcing to be 3d
% need 10 valus of current, and rpm for every one torque 
% for a proper 3d
Torque = [1.0756; 1.2392; 2.5272; 3.23; 3.8744; 4.46; 5.28; 5.984; 6.744; 7.328];
RPM = [610; 917; 2049; 2324; 2582; 2790; 3015; 3249; 3455; 3650];
Current = [1; 2; 25; 37; 49; 62; 78; 95; 113; 132];
Voltage = [86.7; 86.7; 86.7; 86.7; 86.7; 86.7; 86.7;  86.7;  86.4; 86.4];

% Dyno data at 90% load
Dat_3_90L = [.9464 324 2; 1.0048 428 1; 1.0632 620 0; 
    1.1804 820 1; 1.4732 1308 5; 2.5272 1810 20; 
    3.8744 2238 41; 4.52 2427 52; 5.22 2595 65; 
    5.924 2796 80; 6.744 2993 97; 7.448 3150 112; 
    8.092 3282 127; 8.912 3459 146; 9.612 3608 165];

% Dyno data at 80% load
Dat_3_80L = [.8876 232 4; .9464 430 3; 1.0632 624 1;
    1.1212 822 0; 1.532 1090 2; 2.6444 1479 14;
    3.992 1840 31; 4.576 1976 40; 5.28 2116 50; 
    5.984 2296 62; 6.804 2411 75; 8.148 2640 101; 
    8.968 2775 116];
% %% prompt for area of cut in 3D
% dTorque = input('Torque constant? : ');
% dCurrent = input('Current constant? : ');
% dRPM = input('RPM constant? : ');

%% function relating rpm, current and torque
% defining all possible relations
Concat_CurrentVals1 = [ Torque RPM Current];
Concat_CurrentVals2 = [ RPM Torque Current];
Concat_TorqueVals1 = [ RPM Current Torque];
Concat_TorqueVals2 = [ Current RPM Torque];
Concat_RPMVals1 = [ Current Torque RPM];
Concat_RPMVals2 = [ Torque Current RPM];

%% surface plots
figure    
surf( Concat_CurrentVals1 )   
title( '3-D surface Plot of RPM, Current and Torque' )
xlabel( 'Load Torque (lb/ft)' )
ylabel( 'RPM' )
zlabel( 'Current (A)' )

surf( Concat_CurrentVals2 )   
title( '3-D surface Plot of RPM, Current and Torque' )
ylabel( 'Load Torque (lb/ft)' )
xlabel( 'RPM' )
zlabel( 'Current (A)' )

figure 
surf( Concat_TorqueVals1 )   
title( '3-D surface Plot of RPM, Current and Torque' )
zlabel( 'Load Torque (lb/ft)' )
xlabel( 'RPM' )
ylabel( 'Current (A)' )

figure 
surf( Concat_TorqueVals2 )   
title( '3-D surface Plot of RPM, Current and Torque' )
zlabel( 'Load Torque (lb/ft)' )
ylabel( 'RPM' )
xlabel( 'Current (A)' )

figure 
surf( Concat_RPMVals1 )   
title( '3-D surface Plot of RPM, Current and Torque' )
ylabel( 'Load Torque (lb/ft)' )
zlabel( 'RPM' )
xlabel( 'Current (A)' )

figure 
surf( Concat_RPMVals2 )   
title( '3-D surface Plot of RPM, Current and Torque' )
xlabel( 'Load Torque (lb/ft)' )
zlabel( 'RPM' )
ylabel( 'Current (A)' )

% %% mesh plots
% % plot the mesh
% figure    
% mesh( Concat_CurrentVals1 )  
% title( '3-D mesh Plot of RPM, Current and Torque' )
% xlabel( 'Load Torque (lb/ft)' )
% ylabel( 'RPM' )
% zlabel( 'Current (A)' )
% 
% figure
% mesh( Concat_CurrentVals1 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% xlabel( 'Load Torque (lb/ft)' )
% ylabel( 'RPM' )
% zlabel( 'Current (A)' )
% 
% figure 
% mesh( Concat_CurrentVals2 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% ylabel( 'Load Torque (lb/ft)' )
% xlabel( 'RPM' )
% zlabel( 'Current (A)' )
% 
% figure 
% mesh( Concat_TorqueVals1 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% zlabel( 'Load Torque (lb/ft)' )
% xlabel( 'RPM' )
% ylabel( 'Current (A)' )
% 
% figure 
% mesh( Concat_TorqueVals2 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% zlabel( 'Load Torque (lb/ft)' )
% ylabel( 'RPM' )
% xlabel( 'Current (A)' )
% 
% figure 
% mesh( Concat_RPMVals1 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% ylabel( 'Load Torque (lb/ft)' )
% zlabel( 'RPM' )
% xlabel( 'Current (A)' )
% 
% figure 
% mesh( Concat_RPMVals2 )   
% title( '3-D mesh Plot of RPM, Current and Torque' )
% xlabel( 'Load Torque (lb/ft)' )
% zlabel( 'RPM' )
% ylabel( 'Current (A)' )
% 
%% contour plots
figure    
contour( Concat_CurrentVals1 )   
title( 'Current countours' )
xlabel( 'Load Torque (lb/ft)' )
ylabel( 'RPM' )
zlabel( 'Current (A)' )

figure
contour( Concat_CurrentVals2 )   
title( 'Current countours' )
ylabel( 'Load Torque (lb/ft)' )
xlabel( 'RPM' )
zlabel( 'Current (A)' )

figure
contour( Concat_TorqueVals1 )   
title( 'Load Torque countours' )
zlabel( 'Load Torque (lb/ft)' )
xlabel( 'RPM' )
ylabel( 'Current (A)' )

figure
contour( Concat_TorqueVals2 )   
title( 'Load Torque countours' )
zlabel( 'Load Torque (lb/ft)' )
ylabel( 'RPM' )
xlabel( 'Current (A)' )

figure
contour( Concat_RPMVals1 )   
title( 'RPM countours' )
ylabel( 'Load Torque (lb/ft)' )
zlabel( 'RPM' )
xlabel( 'Current (A)' )

figure
contour( Concat_RPMVals2 )   
title( 'RPM countours' )
xlabel( 'Load Torque (lb/ft)' )
zlabel( 'RPM' )
ylabel( 'Current (A)' )

% %% waterfall plots - colums not plotted 
% figure    
% waterfall( Concat_CurrentVals1' )   
% title( 'Current countours' )
% xlabel( 'Load Torque (lb/ft)' )
% ylabel( 'RPM' )
% zlabel( 'Current (A)' )
% 
% figure
% waterfall( Concat_CurrentVals2' )   
% title( 'Current countours' )
% ylabel( 'Load Torque (lb/ft)' )
% xlabel( 'RPM' )
% zlabel( 'Current (A)' )
% 
% figure
% waterfall( Concat_TorqueVals1' )   
% title( 'Load Torque countours' )
% zlabel( 'Load Torque (lb/ft)' )
% xlabel( 'RPM' )
% ylabel( 'Current (A)' )
% 
% figure
% waterfall( Concat_TorqueVals2' )   
% title( 'Load Torque countours' )
% zlabel( 'Load Torque (lb/ft)' )
% ylabel( 'RPM' )
% xlabel( 'Current (A)' )
% 
% figure
% waterfall( Concat_RPMVals1' )   
% title( 'RPM countours' )
% ylabel( 'Load Torque (lb/ft)' )
% zlabel( 'RPM' )
% xlabel( 'Current (A)' )
% 
% figure
% waterfall( Concat_RPMVals2' )   
% title( 'RPM countours' )
% xlabel( 'Load Torque (lb/ft)' )
% zlabel( 'RPM' )
% ylabel( 'Current (A)' )

% %% Function of Power
% P_Elec = Voltage.*Current;
% P_Mech = RPM.*Torque;
% 
% figure 
% plot( P_Elec, '-og' )
% title( '2-D Line Plot of Electric Power' )
% % xlable( 'time (s)' )
% ylabel( 'P_Elec (Watts)' )
% 
% figure 
% plot( P_Mech, '-or' )
% title( '2-D Line Plot of Mechanical Power' )
% ylabel( 'P_Mech (Watts)' )
% 
% figure
% plot(  P_Elec, '-og' , P_Mech, '-or' )