//Define two sequences x and h
x = [1 2 1 2]; 
h = [3 2 1 2]; 

// Get the lengths of the sequences
n1 = length(x);
n2 = length(h);

// The length of the linear convolution result is n1 + n2 - 1
n = n1 + n2 - 1;

// Initialize the output sequence y
y = zeros(1, n);

//Perform linear convolution
for i = 0:n-1
    for j = 0:n1-1
        if (i - j >= 0 && i - j < n2)
            y(i+1) = y(i+1) + x(j+1) * h(i - j + 1);
        end
    end
end

//Display the result
disp('Linear convolution result:');
disp(y);
y_ind=min(x_ind)+min(h_ind):max(x_ind)+max(h_ind);
disp(y);
plot2d3(y_ind,y,-9);
 xlabel("Time index");
ylabel("Amplitude");
title("Linear convolution");
