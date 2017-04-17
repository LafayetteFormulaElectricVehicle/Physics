%% 4-6-2017 data collected for constant current

% read from excel file
filename = 'crash_data_4_5.xlsx';

load_torque = xlsread( filename, 2, 'C2:C1501');
motor_speed = xlsread( filename, 2, 'G2:G1501' );
supply_current = xlsread( filename, 2, 'N2:N1501' );

% create 1501x3 matrix of read parameters
matrix = [ load_torque motor_speed supply_current ];

% plot 3D surface
surf( matrix );

% interpolate - smooth out a surf plot
surf( matrix ); hold on
colormap( green )
shading interp

% cut surface by contant value 
dT = input( PROMPT, 'torque value to slice surface?' );
dC = input( PROMPT, 'current value to slice surface?' );
dR = input( PROMPT, 'rpm value to slice surface?' );

% slice the cut
slice( matrix, dT, dR, dC )

