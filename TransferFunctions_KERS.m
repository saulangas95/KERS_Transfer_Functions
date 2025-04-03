clear all;
close all;
clc;

s = tf('s');

%% Script: KERS_Transfer_Functions_From_Speed_to_Vu.m
% This script computes two transfer functions:
% 1. From vehicle speed (km/h) to generator input angular speed (rpm)
% 2. From vehicle speed (km/h) to generator output voltage Vu (V)
% Both models include mechanical and electrical dynamics based on experimental data.

%% Parameters
% Mechanical speed gain (roller conversion and gear transmission)
roller_conversion = 7.2;   % rpm per km/h
N = 2.6;                   % gear ratio
K_rpm = roller_conversion * N;  % total gain: km/h → rpm

% Mechanical time constant (experimental)
tau_m = 1.5;               % seconds

% Electrical generator parameters
k_m = 0.51;                % V/(rad/s)
R_m = 15.30;               % Ohms
L_m = 5.58e-3;             % Henrys
tau_e = L_m / R_m;         % Electrical time constant (s)

% Conversion: rpm → rad/s
rpm_to_rad = 2 * pi / 60;

%% Transfer Function 1: Vehicle speed (km/h) → Generator speed (rpm)
G_speed_to_rpm = K_rpm / (1 + tau_m * s);

%% Transfer Function 2: Vehicle speed (km/h) → Generator voltage (V)
G_mech = G_speed_to_rpm;                      % Output in rpm
G_elec = rpm_to_rad * k_m / (1 + tau_e * s);  % rpm → rad/s → Vu
G_speed_to_Vu = G_mech * G_elec;

%% Plot: Generator input speed (rpm)
vehicle_speeds = [120, 100, 80, 60];  % km/h

figure;
hold on;
for v = vehicle_speeds
    step(v * G_speed_to_rpm, 0:0.01:7);
end
title('Generator Input Angular Speed (\omega_M) for Vehicle Speeds');
xlabel('Time (s)');
ylabel('\omega_M (rpm)');
legend('120 km/h', '100 km/h', '80 km/h', '60 km/h');
grid on;

%% Plot: Generator output voltage (Vu)
figure;
hold on;
for v = vehicle_speeds
    step(v * G_speed_to_Vu, 0:0.01:7);
end
title('Generator Output Voltage (Vu) for Vehicle Speeds');
xlabel('Time (s)');
ylabel('Voltage (V)');
legend('120 km/h', '100 km/h', '80 km/h', '60 km/h');
grid on;

%% Display transfer functions
disp('Transfer Function: Vehicle speed (km/h) → Generator input speed (rpm)');
G_speed_to_rpm

disp('Transfer Function: Vehicle speed (km/h) → Generator output voltage (Vu)');
G_speed_to_Vu