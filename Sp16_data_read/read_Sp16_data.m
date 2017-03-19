%% read excel file into matlab
% differentiate by load values
% syntax: num = xlsread( filename, x1Range )
% https://www.mathworks.com/help/matlab/ref/xlsread.html?requestedDomain=www.mathworks.com

% read xls files of 48% - 100% load from Sp16_data
filename = 'Sp16_data.xlsx';
%% 48% load
L_48_torque = xlsread( filename, 2, 'M1:M402' )
L_48_rpm = xlsread( filename, 2, 'N1:N402' )
L_48_current = xlsread( filename, 2, 'O1:O402' )
Mat_48 = [L_48_torque L_48_rpm L_48_current];

%% 50% load
L_50_torque = xlsread( filename, 3, 'M1:M179' )
L_50_rpm = xlsread( filename, 3, 'N1:N179' )
L_50_current = xlsread( filename, 3, 'O1:O179' )
Mat_50 = [L_50_torque L_50_rpm L_50_current];

%% 52% load
L_52_torque = xlsread( filename, 4, 'M1:M167' )
L_52_rpm = xlsread( filename, 4, 'N1:N167' )
L_52_current = xlsread( filename, 4, 'O1:O167' )
Mat_52 = [L_52_torque L_52_rpm L_52_current];

%% 54 % load
L_54_torque = xlsread( filename, 5, 'M1:M149' )
L_54_rpm = xlsread( filename, 5, 'N1:N149' )
L_54_current = xlsread( filename, 5, 'O1:O149' )
Mat_54 = [L_54_torque L_54_rpm L_54_current];

%% 56 % load
L_56_torque = xlsread( filename, 6, 'M1:M273' )
L_56_rpm = xlsread( filename, 6, 'N1:N273' )
L_56_current = xlsread( filename, 6, 'O1:O273' )
Mat_56 = [L_56_torque L_56_rpm L_56_current];

%% 58 % load
L_58_torque = xlsread( filename, 7, 'M1:M311' )
L_58_rpm = xlsread( filename, 7, 'N1:N311' )
L_58_current = xlsread( filename, 7, 'O1:O311' )
Mat_58 = [L_58_torque L_58_rpm L_58_current];

%% 60 % load
L_60_torque = xlsread( filename, 8, 'M1:M293' )
L_60_rpm = xlsread( filename, 8, 'N1:N293' )
L_60_current = xlsread( filename, 8, 'O1:O293' )
Mat_60 = [L_60_torque L_60_rpm L_60_current];

%% 62 % load
L_62_torque = xlsread( filename, 9, 'M1:M808' )
L_62_rpm = xlsread( filename, 9, 'N1:N808' )
L_62_current = xlsread( filename, 9, 'O1:O808' )
Mat_62 = [L_62_torque L_62_rpm L_62_current];

%% 64 % load
L_64_torque = xlsread( filename, 10, 'M1:M178' )
L_64_rpm = xlsread( filename, 10, 'N1:N178' )
L_64_current = xlsread( filename, 10, 'O1:O178' )
Mat_64 = [L_64_torque L_64_rpm L_64_current];

%% 66 % load
L_66_torque = xlsread( filename, 10, 'M1:M169' )
L_66_rpm = xlsread( filename, 10, 'N1:N169' )
L_66_current = xlsread( filename, 10, 'O1:O169' )
Mat_66 = [L_66_torque L_66_rpm L_66_current];

%% 68 % load
L_68_torque = xlsread( filename, 11, 'M1:M245' )
L_68_rpm = xlsread( filename, 11, 'N1:N245' )
L_68_current = xlsread( filename, 11, 'O1:O245' )
Mat_68 = [L_68_torque L_68_rpm L_68_current];

%% 70 % load
L_70_torque = xlsread( filename, 12, 'M1:M93' )
L_70_rpm = xlsread( filename, 12, 'N1:N93' )
L_70_current = xlsread( filename, 12, 'O1:O93' )
Mat_70 = [L_70_torque L_70_rpm L_70_current];

%% 72 % load
L_72_torque = xlsread( filename, 13, 'M1:M163' )
L_72_rpm = xlsread( filename, 13, 'N1:N163' )
L_72_current = xlsread( filename, 13, 'O1:O163' )
Mat_72 = [L_72_torque L_72_rpm L_72_current];

%% 74 % load
L_74_torque = xlsread( filename, 14, 'M1:M117' )
L_74_rpm = xlsread( filename, 14, 'N1:N117' )
L_74_current = xlsread( filename, 14, 'O1:O117' )
Mat_74 = [L_74_torque L_74_rpm L_74_current];

%% 76 % load
L_76_torque = xlsread( filename, 15, 'M1:M206' )
L_76_rpm = xlsread( filename, 15, 'N1:N206' )
L_76_current = xlsread( filename, 15, 'O1:O206' )
Mat_76 = [L_76_torque L_76_rpm L_76_current];

%% 78 % load
L_78_torque = xlsread( filename, 16, 'M1:M134' )
L_78_rpm = xlsread( filename, 16, 'N1:N134' )
L_78_current = xlsread( filename, 16, 'O1:O134' )
Mat_78 = [L_78_torque L_78_rpm L_78_current];

%% 80 % load
L_80_torque = xlsread( filename, 17, 'M1:M239' )
L_80_rpm = xlsread( filename, 17, 'N1:N239' )
L_80_current = xlsread( filename, 17, 'O1:O239' )
Mat_80 = [L_80_torque L_80_rpm L_80_current];

%% 82 % load
L_82_torque = xlsread( filename, 18, 'M1:M161' )
L_82_rpm = xlsread( filename, 18, 'N1:N161' )
L_82_current = xlsread( filename, 18, 'O1:O161' )
Mat_82 = [L_82_torque L_82_rpm L_82_current];


%% 84 % load
L_84_torque = xlsread( filename, 19, 'M1:M214' )
L_84_rpm = xlsread( filename, 19, 'N1:N214' )
L_84_current = xlsread( filename, 19, 'O1:O214' )
Mat_84 = [L_84_torque L_84_rpm L_84_current];


%% 86 % load
L_86_torque = xlsread( filename, 20, 'M1:M164' )
L_86_rpm = xlsread( filename, 20, 'N1:N164' )
L_86_current = xlsread( filename, 20, 'O1:O164' )
Mat_86 = [L_86_torque L_86_rpm L_86_current];


%% 88 % load
L_88_torque = xlsread( filename, 21, 'M1:M379' )
L_88_rpm = xlsread( filename, 21, 'N1:N379' )
L_88_current = xlsread( filename, 21, 'O1:O379' )
Mat_88 = [L_88_torque L_88_rpm L_88_current];

% % %% 90 % load
% % L_90_torque = xlsread( filename, 3, 'M1:M1157' )
% % L_90_rpm = xlsread( filename, 3, 'N1:N1157' )
% % L_90_current = xlsread( filename, 3, 'O1:O1157' )
% 
% 
%% 100 % load
L_100_torque = xlsread( filename, 23, 'M1:M1639' )
L_100_rpm = xlsread( filename, 23, 'N1:N1639' )
L_100_current = xlsread( filename, 23, 'O1:O1639' )
Mat_100 = [L_100_torque L_100_rpm L_100_current];

%% 0 % load
L_0_torque = xlsread( filename, 24, 'M1:M361' )
L_0_rpm = xlsread( filename, 24, 'N1:N361' )
L_0_current = xlsread( filename, 24, 'O1:O361' )
Mat_0 = [L_0_torque L_0_rpm L_0_current];

%% Multiple 3D plots
% surf(Mat_0); hold on
% surf(Mat_48); hold on
% surf(Mat_50); hold on
% surf(Mat_52); hold on
% surf(Mat_54); hold on
% surf(Mat_56); hold on
% surf(Mat_58); hold on
% surf(Mat_60); hold on
% surf(Mat_62); hold on
% surf(Mat_64); hold on
% surf(Mat_66); hold on
% surf(Mat_68); hold on
% surf(Mat_70); hold on
% surf(Mat_72); hold on
% surf(Mat_74); hold on
% surf(Mat_76); hold on
% surf(Mat_78); hold on
% surf(Mat_80); hold on
% surf(Mat_82); hold on
% surf(Mat_84); hold on
% surf(Mat_86); hold on
% surf(Mat_88); hold on
% surf(Mat_100); hold on

% % title( 'Array of torque, rpm and current at various loads' )
% % xlabel( 'torque (lb/ft)' )
% % ylabel( 'rpm' )
% % zlabel( 'current(A)' )

% mesh(Mat_0); hold on
% mesh(Mat_48); hold on
% mesh(Mat_50); hold on
% mesh(Mat_52); hold on
% mesh(Mat_54); hold on
% mesh(Mat_56); hold on
% mesh(Mat_58); hold on
% mesh(Mat_60); hold on
% mesh(Mat_62); hold on
% mesh(Mat_64); hold on
% mesh(Mat_66); hold on
% mesh(Mat_68); hold on
% mesh(Mat_70); hold on
% mesh(Mat_72); hold on
% mesh(Mat_74); hold on
% mesh(Mat_76); hold on
% mesh(Mat_78); hold on
% mesh(Mat_80); hold on
% mesh(Mat_82); hold on
% mesh(Mat_84); hold on
% mesh(Mat_86); hold on
% mesh(Mat_88); hold on
% mesh(Mat_100); hold on

% xslice = [1.5,2,2.5];   % location of rpm-current plane
% yslice = 2000;          % location of torque-current plane
% zslice = [50,150];      % location of torue-rpm planes
% 
% slice(Mat_48, xslice, yslice, zslice)

% surfl(Mat_0); hold on
% surfl(Mat_48); hold on
% surfl(Mat_50); hold on
% surfl(Mat_52); hold on
% surfl(Mat_54); hold on
% surfl(Mat_56); hold on
% surfl(Mat_58); hold on
% surfl(Mat_60); hold on
% surfl(Mat_62); hold on
% surfl(Mat_64); hold on
% surfl(Mat_66); hold on
% surfl(Mat_68); hold on
% surfl(Mat_70); hold on
% surfl(Mat_72); hold on
% surfl(Mat_74); hold on
% surfl(Mat_76); hold on
% surfl(Mat_78); hold on
% surfl(Mat_80); hold on
% surfl(Mat_82); hold on
% surfl(Mat_84); hold on
% surfl(Mat_86); hold on
% surfl(Mat_88); hold on
% surfl(Mat_100); hold on
% colormap(pink)
% shading interp

%% interpolate - smooth out a surf plot
surf(interp2(Mat_0)); hold on
surf(interp2(Mat_48)); hold on
surf(interp2(Mat_50)); hold on
surf(interp2(Mat_52)); hold on
surf(interp2(Mat_54)); hold on
surf(interp2(Mat_56)); hold on
surf(interp2(Mat_58)); hold on
surf(interp2(Mat_60)); hold on
surf(interp2(Mat_62)); hold on
surf(interp2(Mat_64)); hold on
surf(interp2(Mat_66)); hold on
surf(interp2(Mat_68)); hold on
surf(interp2(Mat_70)); hold on
surf(interp2(Mat_72)); hold on
surf(interp2(Mat_74)); hold on
surf(interp2(Mat_76)); hold on
surf(interp2(Mat_78)); hold on
surf(interp2(Mat_80)); hold on
surf(interp2(Mat_82)); hold on
surf(interp2(Mat_84)); hold on
surf(interp2(Mat_86)); hold on
surf(interp2(Mat_88)); hold on
surf(interp2(Mat_100)); hold on
colormap(pink)
shading interp
