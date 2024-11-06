

% User-defined sequences
x = input('Enter the first sequence');
h = input('Enter the second sequence');

% Determine the length for circular convolution (max of lengths)
N = max(length(x), length(h));

% Zero-pad sequences to the same length
x_padded = [x zeros(1, N - length(x))];
h_padded = [h zeros(1, N - length(h))];

% Perform FFT on both sequences
X = fft(x_padded, N);
H = fft(h_padded, N);

% Multiply the FFT results element-wise
Y = X .* H;

% Perform IFFT to get the circular convolution result
y_circular_conv = ifft(Y);
disp(y_circular_conv)


% Plot the input sequences and circular convolution result
figure;
subplot(3,1,1);
stem(0:N-1, x_padded, 'filled');
title('Input Sequence x[n]');
xlabel('n');
ylabel('x[n]');
grid on;

subplot(3,1,2);
stem(0:N-1, h_padded, 'filled');
title('Input Sequence h[n]');
xlabel('n');
ylabel('h[n]');
grid on;

subplot(3,1,3);
stem(0:N-1, real(y_circular_conv), 'filled');
title('Circular Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');
grid on;
