clc;
clear;
close;
clf;
 close all;
 x=[1 1 0 0];
 N=length(x);
 X=zeros(4,1);
 for k=0:N-1
    for n =0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-%i*2*%pi*n*k/N);
    end
 end
 disp(round(X));
 
  
//idft
 X=[2 1-%i 0 1+%i];
 N=length(X);
 x=zeros(4,1);
 for n=0:N-1
    for k =0:N-1
        x(n+1)=(x(n+1)+X(k+1)*exp(%i*2*%pi*n*k/N));
    end
 end
 x=x/N;
 disp(round(x));
 disp(ifft(X));
 
//magnitude and phase plot
 
 
xn=[1 1 1];
 N=16;
 L=length(xn);
 if(N<L)
    error('N must be greater than or equal to L')
 end
 x=[xn,zeros(1,N-L)];
 N=length(x);
 Xk=zeros(N,1);
 for k=0:N-1
    for n =0:N-1
        Xk(k+1)=Xk(k+1)+x(n+1)*exp(-%i*2*%pi*n*k/N);
    end
 end
 disp(round(Xk));
disp(fft(x));
mgXk=abs(Xk);
phaseXk = atan(imag(Xk), real(Xk));
 k=0:N-1;
 subplot(2,1,1);
 plot2d3(k,mgXk);
 
 plot(k,mgXk);
 title('DFT sequence');
 xlabel('Frequency');
 ylabel('Magnitude');
 subplot(2,1,2);
 plot2d3(k,phaseXk);
 
 plot(k,phaseXk);
 title('Phase of the DFT sequence');
 xlabel('Frequency');
 
ylabel('Phase');
//dft using twiddle factor

//Input signal  
x = input(enter the elements:);   
N = length(x);   
 
 
X = zeros(1, N);   
// Compute DFT using the twiddle factor 
for k = 0:N-1 
    for n = 0:N-1 
        
        W = exp(-1%j * 2 *%pi * k * n / N); 
        X(k+1) = X(k+1) + x(n+1) * W; 
    end 
end
//dft using twiddle factor
// Input signal

x = input("Enter the elements: ");
N = length(x);

// Initialize output array for DFT values
X = zeros(1, N);

// Compute DFT using the twiddle factor
for k = 0:N-1
    for n = 0:N-1
        W = exp(-%i * 2 * %pi * k * n / N); // Use %i for imaginary unit and %pi for pi
        X(k+1) = X(k+1) + x(n+1) * W;       // Access elements correctly with +1 for 1-based indexing
    end
end

// Display the result
disp("DFT of the input signal is:");
disp(X);
// IDFT using Twiddle Factor
clc;
clear;
X = [2,1-%i,0,1+%i];   // Define input sequence in Scilab
N = length(X);          // Get the length of the input sequence
x = zeros(1, N);        // Initialize output array for IDFT values

// Compute IDFT using the twiddle factor
for n = 0:N-1
    for k = 0:N-1
        W = exp(%i * 2 * %pi * k * n / N); // Use %i for imaginary unit and %pi for pi in Scilab
        x(n+1) = x(n+1) + X(k+1) * W;      // Indexing in Scilab is 1-based, so use +1
    end
    // Divide by N as per IDFT formula
    x(n+1) = x(n+1) / N;
end

// Display the result
disp("Reconstructed time-domain signal (IDFT):");
disp(x);


