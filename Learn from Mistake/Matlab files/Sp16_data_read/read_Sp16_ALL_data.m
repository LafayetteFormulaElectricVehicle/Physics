filename = 'Sp16_data.xlsx';
%% All loads
% T is torque, R is rpm, C is current
T = xlsread( filename, 1, 'M1:M8901' );
R = xlsread( filename, 1, 'N1:N8901' );
C = xlsread( filename, 1, 'O1:O8901' );
% MAT = [ T R C ];
% surf(interp2(MAT)); hold on
% colormap(pink)
% shading interp

%% find xy coordinates from a surface plot
% to plot array of xy for a given constant z
%[T, R, C] = peaks;
K = find( C == max(max(C)));
T(K); %torque values corresponding to the points where current is max
R(K); %rpm values corresponding to the points where current is max

% testing values are correct
%[T, R, C] = peaks;
surf( T, R, C )
hold on
K = find( C == max(max(C)));
plot3( T(K), R(K), C(K), 'x' )