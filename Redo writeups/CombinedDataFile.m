% Efficiency plots of the combined data (2016 and 2017)
filename = 'Combined Data File.xlsx';

load_torque = xlsread( filename, 2, 'A10:A8594' );
% lb-ft
motor_speed = xlsread( filename, 2, 'B10:B8594' );
% rpm
supply_voltage = xlsread( filename, 2, 'C10:C8594' );
% V
supply_current = xlsread( filename, 2, 'D10:D8594' );
% A
power_in = xlsread( filename, 2, 'G10:G8594' );
% Watts
power_out = xlsread( filename, 2, 'H10:H8594' );
% Watts
efficiency = xlsread( filename, 2, 'I10:I8594' );
% percentage

% plots of the efficiency
plot(ax1, motor_speed, efficiency) 
title(ax1, 'Efficiency vs Motor Speed')
ylabel(ax1, 'Efficiency (%)')
xlabel(ax1, 'Motor Speed (rpm)')

plot(ax2, load_torque, efficiency)
title(ax2, 'Efficiency vs Load Torque')
ylabel(ax2, 'Efficiency (%)')
xlabel(ax2, 'Load Torque (lb-ft)')

plot(ax3, supply_current, efficiency)
title(ax3, 'Efficiency vs Supply Current')
ylabel(ax3, 'Efficiency (%)')
xlabel(ax3, 'Supply Current (A)')
