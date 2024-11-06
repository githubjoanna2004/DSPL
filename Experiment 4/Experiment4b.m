% Circular Convolution using Matrix Multiplication Method

% User-defined sequences
x = input('Enter the first sequence x(n): ');
h = input('Enter the second sequence h(n): ');

% Length of the sequences
N1 = length(x);
N2 = length(h);

% Make both sequences of equal length by zero-padding
N = max(N1, N2);
x = [x, zeros(1, N - N1)];
h = [h, zeros(1, N - N2)];

% Circular Convolution Matrix for h
H = zeros(N, N);
for i = 1:N
    H(:,i) = circshift(h', i-1);
end

% Circular Convolution using Matrix Multiplication
y = (H * x')';

% Plot the sequences
n = 0:N-1;

subplot(3,1,1);
stem(n, x, 'filled');
title('First Sequence x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(n, h, 'filled');
title('Second Sequence h(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,3);
stem(n, y, 'filled');
title('Circular Convolution y(n)');
xlabel('n');
ylabel('Amplitude');

% Display the result
disp('Circular convolution result y(n):');
disp(y);
