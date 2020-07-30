MAIN CODE
%% Retrieving Data 
load('EEG_sub1.mat');
O1sub1 = EEG(8).ch;
O2sub1 = EEG(12).ch;
FP1sub1 = EEG(5).ch;
FP2sub1 = EEG(9).ch;

time = length(O1sub1);
time = 0 : time - 1;
time = time * 0.004;

%% B1

denoise = EEGBandpassFilterDenoise;

%% B2

% Normalize

normO1sub1 = normalize(O1sub1);
normO2sub1 = normalize(O2sub1);
normFP1sub1 = normalize(FP1sub1);
normFP2sub1 = normalize(FP2sub1);


% Denoise
filteredO1sub1 = filter(denoise,normO1sub1);
filteredO2sub1 = filter(denoise,normO2sub1);
filteredFP1sub1 = filter(denoise,normFP1sub1);
filteredFP2sub1 = filter(denoise,normFP2sub1);
%uncomment above when done part B2
% filteredO1sub1 = filter(denoise,O1sub1);
% filteredO2sub1 = filter(denoise,O2sub1);
% filteredFP1sub1 = filter(denoise,FP1sub1);
% filteredFP2sub1 = filter(denoise,FP2sub1);
%comment above when done part B2

%%
figure(1)
plot(time(1:7500),O1sub1(1:7500))
title('Subject 1 O1 Signal')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(2)
plot(time(1:7500),filteredO1sub1(1:7500))
title('Subject 1 O1 Signal Filtered')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(3)
plot(time(1:7500),O2sub1(1:7500))
title('Subject 1 O2 Signal')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(4)
plot(time(1:7500),filteredO2sub1(1:7500))
title('Subject 1 O2 Signal Filtered')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(5)
plot(time(1:7500),FP1sub1(1:7500))
title('Subject 1 FP1 Signal')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(6)
plot(time(1:7500),filteredFP1sub1(1:7500))
title('Subject 1 FP1 Signal Filtered')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(7)
plot(time(1:7500),FP2sub1(1:7500))
title('Subject 1 FP2 Signal')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

figure(8)
plot(time(1:7500),filteredFP2sub1(1:7500))
title('Subject 1 FP2 Signal Filtered')
ylabel('Voltage (uV)')
xlabel('Time (sec)')

%% B3

% Wave Exstraction

alpha = alphaWave;
beta = betaWave;
delta = deltaWave;
theta = thetaWave;

alphaO1sub1 = filter(alpha,filteredO1sub1);
betaO1sub1 = filter(beta,filteredO1sub1);
deltaO1sub1 = filter(delta,filteredO1sub1);
thetaO1sub1 = filter(theta,filteredO1sub1);

alphaO2sub1 = filter(alpha,filteredO2sub1);
betaO2sub1 = filter(beta,filteredO2sub1);
deltaO2sub1 = filter(delta,filteredO2sub1);
thetaO2sub1 = filter(theta,filteredO2sub1);

alphaFP1sub1 = filter(alpha,filteredFP1sub1);
betaFP1sub1 = filter(beta,filteredFP1sub1);
deltaFP1sub1 = filter(delta,filteredFP1sub1);
thetaFP1sub1 = filter(theta,filteredFP1sub1);

alphaFP2sub1 = filter(alpha,filteredFP2sub1);
betaFP2sub1 = filter(beta,filteredFP2sub1);
deltaFP2sub1 = filter(delta,filteredFP2sub1);
thetaFP2sub1 = filter(theta,filteredFP2sub1);

%% Looking at filtered signal

figure(97)
subplot(411)
plot(time(1:7500),alphaO1sub1(1:7500))
title('Alpha Wave O1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(412)
plot(time(1:7500),betaO1sub1(1:7500))
title('Beta Wave O1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(413)
plot(time(1:7500),deltaO1sub1(1:7500))
title('Delta Wave O1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(414)
plot(time(1:7500),thetaO1sub1(1:7500))
title('Theta Wave O1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')

figure(98)
subplot(411)
plot(time(1:7500),alphaO2sub1(1:7500))
title('Alpha Wave O2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(412)
plot(time(1:7500),betaO2sub1(1:7500))
title('Beta Wave O2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(413)
plot(time(1:7500),deltaO2sub1(1:7500))
title('Delta Wave O2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(414)
plot(time(1:7500),thetaO2sub1(1:7500))
title('Theta Wave O2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')

figure(99)
subplot(411)
plot(time(1:7500),alphaFP1sub1(1:7500))
title('Alpha Wave FP1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(412)
plot(time(1:7500),betaFP1sub1(1:7500))
title('Beta Wave FP1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(413)
plot(time(1:7500),deltaFP1sub1(1:7500))
title('Delta Wave FP1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(414)
plot(time(1:7500),thetaFP1sub1(1:7500))
title('Theta Wave FP1')
xlabel('Time (sec)')
ylabel('Voltage (uV)')

figure(100)
subplot(411)
plot(time(1:7500),alphaFP2sub1(1:7500))
title('Alpha Wave FP2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(412)
plot(time(1:7500),betaFP2sub1(1:7500))
title('Beta Wave FP2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(413)
plot(time(1:7500),deltaFP2sub1(1:7500))
title('Delta Wave FP2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')
subplot(414)
plot(time(1:7500),thetaFP2sub1(1:7500))
title('Theta Wave FP2')
xlabel('Time (sec)')
ylabel('Voltage (uV)')


DENOISE BANDPASS FILTER

function Hd = EEGBandpassFilterDenoise
%EEGBANDPASSFILTERDENOISE Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 28-Mar-2020 16:56:17

% Chebyshev Type I Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 256;  % Sampling Frequency

N  	= 10;   % Order
Fpass1 = 0.5;  % First Passband Frequency
Fpass2 = 30;   % Second Passband Frequency
Apass  = 1;	% Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]


ALPHA WAVE BANDPASS FILTER

function Hd = alphaWave
%ALPHAWAVE Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 29-Mar-2020 14:20:49

% Chebyshev Type I Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 256;  % Sampling Frequency

N  	= 10;  % Order
Fpass1 = 8;   % First Passband Frequency
Fpass2 = 13;  % Second Passband Frequency
Apass  = 1;   % Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]


BETA WAVE BANDPASS FILTER

function Hd = betaWave
%BETAWAVE Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 29-Mar-2020 14:52:57

% Chebyshev Type I Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 256;  % Sampling Frequency

N  	= 10;  % Order
Fpass1 = 13;  % First Passband Frequency
Fpass2 = 22;  % Second Passband Frequency
Apass  = 1;   % Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]


DELTA WAVE BANDPASS FILTER

function Hd = deltaWave
%DELTAWAVE Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 29-Mar-2020 14:53:59

% Chebyshev Type I Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 256;  % Sampling Frequency

N  	= 10;   % Order
Fpass1 = 0.5;  % First Passband Frequency
Fpass2 = 4;	% Second Passband Frequency
Apass  = 1;	% Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]


THETA WAVE BANDPASS FILTER

function Hd = thetaWave
%THETAWAVE Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 29-Mar-2020 14:54:47

% Chebyshev Type I Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 256;  % Sampling Frequency

N  	= 10;  % Order
Fpass1 = 4;   % First Passband Frequency
Fpass2 = 8;   % Second Passband Frequency
Apass  = 1;   % Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]

% Part 5

% 5a.

%% Retrieving Data
load('EEG_sub1.mat');
O1sub1 = EEG(8).ch;
O2sub1 = EEG(12).ch;
FP1sub1 = EEG(5).ch;
FP2sub1 = EEG(9).ch;

time = length(O1sub1); % frequency domain conversion for O1 signal
time = 0 : time - 1;
time = time * 0.004;

time2 = length(O1sub1);  % frequency domain conversion for O2 signal
time2 = 0 : time2 - 1;
time2 = time2 * 0.004;

time3 = length(O1sub1); % frequency domain conversion for FP1 signal
time3 = 0 : time3 - 1;
time3 = time3 * 0.004;

time4 = length(O1sub1); % frequency domain conversion for FP2 signal
time4 = 0 : time4 - 1;
time4 = time4 * 0.004;

%CHEBYSHEV FILTERS ORDER 10, WITH FREQUENCY 30-100Hz applied
[b,a] = sos2tf(SOS, G); 	% filters applied to OP1 signal
o1ecgcheby = filter(b,a,O1sub1);

[b,a] = sos2tf(SOS, G);	% filters applied to OP2 signal
o2ecgcheby = filter(b,a,O2sub1);

[b,a] = sos2tf(SOS, G);	% filters applied to FP1 signal
fp1ecgcheby = filter(b,a,FP1sub1);

[b,a] = sos2tf(SOS, G);	% filters applied to FP2 signal
fp2ecgcheby = filter(b,a,FP2sub1);

% OP1 PLOT BEFORE AND AFTER
figure(1) 
subplot(2,1,1); plot(time, O1sub1); title('Before filtering O1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20);ylabel('mV','FontSize', 20);
subplot(2,1,2); plot(time,ecgcheby); title('After filtering O1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);

% OP2 PLOT BEFORE AND AFTER
figure(2)
subplot(2,1,1); plot(time2, O2sub1); title('Before filtering O2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20);ylabel('mV','FontSize', 20);
subplot(2,1,2); plot(time2,o2ecgcheby); title('After filtering O2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);

%  FP1 PLOT BEFORE AND AFTER
figure(3)
subplot(2,1,1); plot(time3, FP1sub1); title('Before filtering FP1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20);ylabel('mV','FontSize', 20);
subplot(2,1,2); plot(time3,fp1ecgcheby); title('After filtering FP1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);

%  FP2 PLOT BEFORE AND AFTER
figure(4)
subplot(2,1,1); plot(time4, FP2sub1); title('Before filtering FP2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20);ylabel('mV','FontSize', 20);
subplot(2,1,2); plot(time4,fp2ecgcheby); title('After filtering FP2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);


%5c

%% Retrieving Data
load('EEG_sub1.mat');
O1sub1 = EEG(8).ch;
O2sub1 = EEG(12).ch;
FP1sub1 = EEG(5).ch;
FP2sub1 = EEG(9).ch;

time = length(O1sub1); % frequency domain conversion for O1 signal
time = 0 : time - 1;
time = time * 0.004;

time2 = length(O1sub1);  % frequency domain conversion for O2 signal
time2 = 0 : time2 - 1;
time2 = time2 * 0.004;

time3 = length(O1sub1); % frequency domain conversion for FP1 signal
time3 = 0 : time3 - 1;
time3 = time3 * 0.004;

time4 = length(O1sub1); % frequency domain conversion for FP2 signal
time4 = 0 : time4 - 1;
time4 = time4 * 0.004;



[b,a] = sos2tf(SOS, G);
o1ecgcheby = filter(b,a,O1sub1);


[b,a] = sos2tf(SOS, G);
o2ecgcheby = filter(b,a,O2sub1);

[b,a] = sos2tf(SOS, G);
fp1ecgcheby = filter(b,a,FP1sub1);

[b,a] = sos2tf(SOS, G);
fp2ecgcheby = filter(b,a,FP2sub1);


figure(1)
subplot(4,1,1); plot(time(1:7500),ecgcheby(1:7500)); title('Noise of O1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);
subplot(4,1,2); plot(time2(1:7500),o2ecgcheby(1:7500)); title('Noise of O2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);
subplot(4,1,3); plot(time3(1:7500),fp1ecgcheby(1:7500)); title('Noise of FP1 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);
subplot(4,1,4); plot(time4(1:7500),fp2ecgcheby(1:7500)); title('Noise of FP2 Signal','FontSize', 20);xlabel('Time in seconds','FontSize', 20); ylabel('mV','FontSize', 20);
