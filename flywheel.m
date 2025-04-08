% Geometric and material parameters
r1 = [0.10, 0.15, 0.20, 0.30, 0.30]; % m
r2 = [0.08, 0.13, 0.15, 0.25, 0.20]; % m
L = 0.05; % m (flywheel axial width)
rho_steel = 7850; % kg/m^3
rho_al = 2700;    % kg/m^3

% Angular speeds (optimized)
w_max = 189.37; % rad/s
w_min = 18.23;  % rad/s

% Volume of hollow cylinder
volume = pi * L .* (r1.^2 - r2.^2); % m^3

% Mass calculations
mass_steel = rho_steel .* volume;
mass_al = rho_al .* volume;

% Moment of inertia: J = 0.5 * m * (r1^2 + r2^2)
J_steel = 0.5 .* mass_steel .* (r1.^2 + r2.^2);
J_al = 0.5 .* mass_al .* (r1.^2 + r2.^2);

% Stored kinetic energy: E = 0.5 * J * (w_max^2 - w_min^2)
E_steel = 0.5 .* J_steel .* (w_max^2 - w_min^2);
E_al = 0.5 .* J_al .* (w_max^2 - w_min^2);

% Labels and indexing
cases = {'Case 1','Case 2','Case 3','Case 4','Case 5'};
x = 1:length(cases);
bar_width = 0.4;

% Plot 1: Stored energy
figure;
bar(x - bar_width/2, E_steel, bar_width, 'FaceColor', [0 0.4470 0.7410]); hold on;
bar(x + bar_width/2, E_al, bar_width, 'FaceColor', [0.8500 0.3250 0.0980]);
xticks(x); xticklabels(cases);
xlabel('Design Cases'); ylabel('Stored Energy (J)');
title('Energy stored in flywheel design cases');
legend('Steel','Aluminum','Location','northeast');
grid on;

% Plot 2: Mass
figure;
bar(x - bar_width/2, mass_steel, bar_width, 'FaceColor', [0 0.4470 0.7410]); hold on;
bar(x + bar_width/2, mass_al, bar_width, 'FaceColor', [0.8500 0.3250 0.0980]);
xticks(x); xticklabels(cases);
xlabel('Design Cases'); ylabel('Mass (kg)');
title('Mass of flywheel design cases');
legend('Steel','Aluminum','Location','northeast');
grid on;

% Plot 3: Moment of Inertia
figure;
bar(x - bar_width/2, J_steel, bar_width, 'FaceColor', [0 0.4470 0.7410]); hold on;
bar(x + bar_width/2, J_al, bar_width, 'FaceColor', [0.8500 0.3250 0.0980]);
xticks(x); xticklabels(cases);
xlabel('Design Cases'); ylabel('Moment of Inertia (kg·m²)');
title('Moment of inertia of flywheel design cases');
legend('Steel','Aluminum','Location','northeast');
