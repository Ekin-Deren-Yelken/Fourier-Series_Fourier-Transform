%% ELEC 324 Lab 3 - Fourier Series, Fourier Transform
% MATLAB Code

clc; clear; close all;

%% 2.0.2 Prelab: Creating a DTPS
% Sampling an aperiodic CT signal and forming a DTPS

T = 0:99; % Time indices
x_t = sin(2 * pi * T / 50); % Example aperiodic CT signal

% Creating periodic discrete-time periodic signal (DTPS)
L = length(T);
y_n = repmat(x_t, 1, 3); % Repeat for 3 periods

figure;
stem(y_n);
title('Discrete-Time Periodic Signal y[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

%% 3.2.1 Basic DFT
% Create a discrete sine wave with period 20 and length L = 100

L = 100;
n = 0:L-1;
x = sin(2 * pi * n / 20); % Periodic sine wave

X_dft = fft(x, L); % Compute DFT
x_recon = ifft(X_dft, L); % Inverse DFT

figure;
subplot(3,1,1);
stem(n, x); title('Original Signal'); xlabel('n'); ylabel('x[n]'); grid on;
subplot(3,1,2);
stem(abs(X_dft)); title('Magnitude of DFT Coefficients'); xlabel('k'); ylabel('|X[k]|'); grid on;
subplot(3,1,3);
stem(n, real(x_recon)); title('Reconstructed Signal using IDFT'); xlabel('n'); ylabel('x[n]'); grid on;

%% 3.2.2 Changing the Transform Size
% Repeat with L = 20 and L = 30

for L = [20, 30]
    n = 0:L-1;
    x = sin(2 * pi * n / 20);
    X_dft = fft(x, L);
    x_recon = ifft(X_dft, L);
    
    figure;
    subplot(3,1,1);
stem(n, x); title(['Original Signal, L = ', num2str(L)]); xlabel('n'); ylabel('x[n]'); grid on;
    subplot(3,1,2);
stem(abs(X_dft)); title(['Magnitude of DFT Coefficients, L = ', num2str(L)]); xlabel('k'); ylabel('|X[k]|'); grid on;
    subplot(3,1,3);
stem(n, real(x_recon)); title(['Reconstructed Signal using IDFT, L = ', num2str(L)]); xlabel('n'); ylabel('x[n]'); grid on;
end

%% 3.2.3 Windowing the Signal
% Set last 40 samples to zero safely

x_win = x;
if length(x_win) >= 40
    x_win(end-39:end) = 0;
end
X_dft_win = fft(x_win, 100);
x_recon_win = ifft(X_dft_win, 100);

n_win = 0:length(x_recon_win)-1;

figure;
subplot(3,1,1);
stem(n, x_win); title('Windowed Signal'); xlabel('n'); ylabel('x[n]'); grid on;
subplot(3,1,2);
stem(abs(X_dft_win)); title('Magnitude of DFT Coefficients (Windowed)'); xlabel('k'); ylabel('|X[k]|'); grid on;
subplot(3,1,3);
stem(n_win, real(x_recon_win)); title('Reconstructed Signal using IDFT (Windowed)'); xlabel('n'); ylabel('x[n]'); grid on;

%% 3.3.2 Effect of L - Varying L_factor
L_factor_vals = 1:5;
N_factor = 1;

for L_factor = L_factor_vals
    L = 100 * L_factor;
    n = 0:L-1;
    x = sin(2 * pi * n / 50);
    X_dft = fft(x, L * N_factor);
    
    figure;
    subplot(2,1,1);
stem(n, x); title(['Signal with L Factor = ', num2str(L_factor)]); xlabel('n'); ylabel('x[n]'); grid on;
    subplot(2,1,2);
stem(abs(X_dft)); title(['Magnitude Spectrum, L Factor = ', num2str(L_factor)]); xlabel('k'); ylabel('|X[k]|'); grid on;
end

%% 3.3.3 Effect of N - Varying N_factor
L_factor = 1;
N_factor_vals = [1, 2, 5];
L = 100 * L_factor;
n = 0:L-1;
x = sin(2 * pi * n / 50);

for N_factor = N_factor_vals
    X_dft = fft(x, L * N_factor);
    
    figure;
    stem(abs(X_dft));
    title(['Magnitude Spectrum, N Factor = ', num2str(N_factor)]);
    xlabel('k'); ylabel('|X[k]|'); grid on;
end