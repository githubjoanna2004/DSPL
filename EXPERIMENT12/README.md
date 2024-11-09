## THEORY
Linear convolution in a DSP kit is a method for combining two discrete signals, typically an input signal and an impulse response, to analyze or filter the signal. 
In simple terms, linear convolution calculates the output signal by taking each sample of one signal, multiplying it with every sample of the second signal, and 
summing the results. Mathematically, if x[n] is the input signal and h[n] is the impulse response, the output y[n] is given by 
y[n]=∑x[k]⋅h[n−k]y[n] = \sum x[k] \cdot h[n-k]y[n]=∑x[k]⋅h[n−k]. This operation is useful in DSP for implementing digital filters, where the impulse response representsthe filter characteristics. The DSP kit performs this convolution by processing each element, enabling the real-time application of filters to signals in audio processing, communications, and control systems.

# OBSERVATION
## INPUT :
x[n] = {1, 2, 3, 4}
h[k] = {1, 2, 3, 4}
## OUTPUT :
y[r] = {1, 4, 10, 20, 25, 24, 16}
