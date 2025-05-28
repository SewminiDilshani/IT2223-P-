    %BUBBLE SORT
%Take an array of numbers
%Repeat for all elements in the array
  %Compare each pair of adjacent elements 
  %If the left element is greater than the right element
  %Swap them
%Continue this process until the entire array i ssorted
  %Largest elements will "bubble up" to the end in each 

% Bubble Sort Implementation

% Array of numbers
arr = [64, 34, 25, 12, 22, 11, 90];

% Get the length of the array
n = length(arr);

% Perform bubble sort
for i = 1:n-1
    for j = 1:n-i
        if arr(j) > arr(j+1)
            % Swap elements
            temp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = temp;
        end
    end
end

% Display the sorted array
disp('Sorted array:');
disp(arr);
