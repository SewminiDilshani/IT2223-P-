%Take array of numbers
%Set the first element as the current position
%From the current position,find the smallest number in the remaining array
%Swap the smallest number with the current position
%Move to the next position and repeat Step 3 ans 4 until the whole array is stored

% Array of numbers
arr = [64, 25, 12, 22, 11];

% Get the length of the array
n = length(arr);

% Perform selection sort
for i = 1:n-1
    min_idx = i;
    
    % Find the smallest number in the remaining array
    for j = i+1:n
        if arr(j) < arr(min_idx)
            min_idx = j;
        end
    end
    
    % Swap the found minimum element with the current position
    temp = arr(i);
    arr(i) = arr(min_idx);
    arr(min_idx) = temp;
end

% Display the sorted array
disp('Sorted array:');
disp(arr);
