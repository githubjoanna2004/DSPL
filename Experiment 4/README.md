# Theory 
Circular convolution is a mathematical operation used primarily in signal processing. It 
involves wrapping one signal around a circular buffer and performing the convolution 
operation on it, often used when signals are periodic or when working with discrete Fourier 
transforms (DFT). This technique ensures that the result maintains periodicity by aligning the 
endpoints of signals. It is computationally efficient and widely applied in fast algorithms like 
the Fast Fourier Transform (FFT). It can be performed by 3 methods: 
Using FFT (Fast Fourier Transform): 
• Circular convolution is performed by transforming the sequences to the frequency 
domain using FFT, multiplying them element-wise, and transforming them back using 
the inverse FFT. 
                     
## Concentric Circle Method: 
• This is a graphical method where one sequence is placed in a circular pattern, and the 
other sequence is rotated around it. The inner product of corresponding values after 
each rotation gives the result. 
## Matrix Method: 
• Circular convolution can be represented as matrix multiplication, where one sequence 
is arranged in a circulant matrix, and the other is a column vector. 
               y=C⋅h 
where C is the circulant matrix formed from x, and h is the vector.

# OSERVATION
![image](https://github.com/user-attachments/assets/981aff29-f4a5-4fbf-9e90-ccab41e15229)
![image](https://github.com/user-attachments/assets/e3ec9290-b772-415c-977b-15b2ba26a9ab)
![image](https://github.com/user-attachments/assets/2a270098-2134-465b-a754-fd49db83ee49)



