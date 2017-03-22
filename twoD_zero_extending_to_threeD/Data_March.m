% Dyno data collected at 100% load
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

Dat1 = [Torque1 RPM1 Current1];
Dat2 = [Torque2 RPM2 Current2];
Dat3 = [Torque3 RPM3 Current3];

%% interpolate - smooth out a surf plot
surf(interp2(Dat1)); hold on
surf(interp2(Dat2)); hold on
surf(interp2(Dat3)); hold on
colormap(pink)
shading interp