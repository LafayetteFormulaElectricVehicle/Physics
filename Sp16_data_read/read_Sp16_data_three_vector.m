% read xls files of 48% - 100% load from Sp16_data
filename = 'Sp16_data.xlsx';
%% 48% load
L_48 = xlsread( filename, 2, 'M1:O1157' )


%% 50% load
L_50 = xlsread( filename, 3, 'M1:O1157' )


%% 52% load
L_52 = xlsread( filename, 4, 'M1:O1157' )


%% 54 % load
L_54 = xlsread( filename, 5, 'M1:O1157' )

%% 56 % load
L_56 = xlsread( filename, 6, 'M1:O1157' )

%% 58 % load
L_58 = xlsread( filename, 7, 'M1:M1157' )


%% 60 % load
L_60 = xlsread( filename, 8, 'M1:O1157' )



%% 62 % load
L_62 = xlsread( filename, 9, 'M1:O1157' )


%% 64 % load
L_64 = xlsread( filename, 10, 'M1:O1157' )

%% 68 % load
L_68 = xlsread( filename, 11, 'M1:O1157' )



%% 70 % load
L_70 = xlsread( filename, 12, 'M1:O1157' )



%% 72 % load
L_72 = xlsread( filename, 13, 'M1:M1157' )



%% 74 % load
L_74 = xlsread( filename, 14, 'M1:O1157' )



%% 76 % load
L_76 = xlsread( filename, 15, 'M1:O1157' )

%% 78 % load
L_78 = xlsread( filename, 16, 'M1:O1157' )


% 
% % %% 80 % load
% % L_80_torque = xlsread( filename, 3, 'M1:M1157' )
% % L_80_rpm = xlsread( filename, 3, 'N1:N1157' )
% % L_80_current = xlsread( filename, 3, 'O1:O1157' )
% % 
% % 
% % %% 90 % load
% % L_90_torque = xlsread( filename, 3, 'M1:M1157' )
% % L_90_rpm = xlsread( filename, 3, 'N1:N1157' )
% % L_90_current = xlsread( filename, 3, 'O1:O1157' )
% 
% 
%% 100 % load
L_100 = xlsread( filename, 19, 'M1:O1157' )

%% 0 % load
L_0 = xlsread( filename, 20, 'M1:O1157' )
