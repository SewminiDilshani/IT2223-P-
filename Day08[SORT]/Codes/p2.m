     %INSERTION SORT
%Take an array with some numbers
%Start from the second element in the array
%Compare this element(key) with the elements before it
%While the previous elements are greater than the key
  %Move the previous elements one position forward
%Insert the key at its correct position
%Repeat steps 3 to 5 for all elements in the array

% INSERTION SORT
% Take an array with some numbers
arr = [64, 34, 25, 12, 22, 11, 90];

% Get the length of the array
n = length(arr);

% Start from the second element
for i = 2:n
    key = arr(i);       % The element to be inserted
    j = i - 1;
    
    % Move elements of arr[1..i-1], that are greater than key,
    % to one position ahead of their current position
    while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end
    
    % Insert the key at its correct position
    arr(j + 1) = key;
end

% Display the sorted array
disp('Sorted array:');
disp(arr);
