# THEORY

 ## Linear Convolution using Circular Convolution: 
 
To compute linear convolution through circular convolution, the input sequences are padded 
with zeros to a length of  N = L + M - 1 , where  L and M are the lengths of the two 
sequences. This padding ensures that the circular convolution produces the same result as 
linear convolution. Once padded, applying circular convolution to these sequences will yield 
the linear convolution outcome. 

## Circular Convolution using Linear Convolution: 

Circular convolution can be derived from linear convolution by first applying linear 
convolution to two sequences of length  N. Then, the result is adjusted by wrapping around or 
adding the overlapping elements to match the original sequence length N, usually using 
modulo N.

## OBSERVATION

![Screenshot 2024-11-06 125356](https://github.com/user-attachments/assets/91e510e9-f719-4d0a-83ea-8c2d4d57d7fc)
