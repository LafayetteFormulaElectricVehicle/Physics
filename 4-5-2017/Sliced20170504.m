%% 4-6-2017 data collected for constant current

% read from excel file
filename = 'crash_data_4_5.xlsx';

load_torque = xlsread( filename, 2, 'C2:C1501');
motor_speed = xlsread( filename, 2, 'G2:G1501' );
supply_current = xlsread( filename, 2, 'N2:N1501' );

% create 1501x3 matrix of read parameters
matrix = [ load_torque motor_speed supply_current ];

% plot 3D surface
surf( matrix ); hold on
xlabel( 'Load Torque (ft-lb)' )
ylabel( 'Motor Speed (rpm)' )
zlabel( 'Supply Current (A)' )
% %% interpolate - smooth out a surf plot
% surf( matrix ); hold on
% colormap( pink )
% shading interp
% xlabel( 'Load Torque (ft-lb)' )
% ylabel( 'Motor Speed (rpm)' )
% zlabel( 'Supply Current (A)' )

% %% cut surface by contant value 
% dT = input( 'torque value to slice surface?' );
% dC = input( 'current value to slice surface?' );
% dR = input( 'rpm value to slice surface?' );

% % slice the cut
% slice( matrix, dT, dR, dC )

