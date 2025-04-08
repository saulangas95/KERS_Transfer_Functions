% Load data from Excel file
data = readtable('Graf-KERs.xlsx');

% Extract relevant columns
t = data.Time;
iL1 = data.iL1_b;
iL2 = data.iL2_b;
iL3 = data.iL3_b;
iL4 = data.iL4_b;
i_in = data.Iin_a;
Vo = data.Vo_d;
Io = data.Io_c;
IBk=data.IinBuck_a;

% Filter data between 0.04 and 0.04005 seconds
mask = (t >= 0.04) & (t <= 0.04005);
t = t(mask);
iL1 = iL1(mask);
iL2 = iL2(mask);
iL3 = iL3(mask);
iL4 = iL4(mask);
i_in = i_in(mask);
Vo = Vo(mask);
Io = Io(mask);
IBk=IBk(mask);

% Create figure with 4 vertically stacked subplots
figure;

% Subplot 1: Input current
subplot(4,1,1);
plot(t, i_in, 'r', 'DisplayName', 'Input current');hold on;
plot(t, IBk, 'DisplayName', 'in Buck');
title('(a) Input current');
ylabel('Current (A)');
ylim([0 15]);
legend('Location', 'northeast');
grid on;

% Subplot 2: Inductor currents
subplot(4,1,2);
plot(t, iL1, 'DisplayName', 'iL1'); hold on;
plot(t, iL2, 'DisplayName', 'iL2');
plot(t, iL3, 'DisplayName', 'iL3');
plot(t, iL4, 'DisplayName', 'iL4');
title('(b) Inductor currents');
ylabel('Current (A)');
legend('Location', 'northeast');
grid on;

% Subplot 3: Output current
subplot(4,1,3);
plot(t, Io, 'g', 'DisplayName', 'Output current');
title('(c) Output current');
ylabel('Current (A)');
legend('Location', 'northeast');
grid on;

% Subplot 4: Output voltage
subplot(4,1,4);
plot(t, Vo, 'Color', [1 0.5 0], 'DisplayName', 'Output voltage');
title('(d) Output voltage');
xlabel('Time (s)');
ylabel('Voltage (V)');
ylim([47 49]);
legend('Location', 'northeast');

