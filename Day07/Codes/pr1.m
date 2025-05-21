%Create array with 1000 numbers
%Use tic/toc to measure time for:
% Linear search
% Binary search(after sorting)
%Compare result

% Create array with numbers from 1 to 1000
array = 1:1000;

% Set target value explicitly
target = 50;

%% Linear Search
tic;
found_linear = false;
for i = 1:length(array)
    if array(i) == target
        found_linear = true;
        break;
    end
end
time_linear = toc;

%% Binary Search
sorted_array = sort(array);  % Already sorted, but kept for clarity
tic;
left = 1;
right = length(sorted_array);
found_binary = false;

while left <= right
    mid = floor((left + right) / 2);
    if sorted_array(mid) == target
        found_binary = true;
        break;
    elseif sorted_array(mid) < target
        left = mid + 1;
    else
        right = mid - 1;
    end
end
time_binary = toc;

%% Display Results
fprintf('Target value: %d\n', target);
fprintf('Linear search found target: %d, Time: %.6f seconds\n', found_linear, time_linear);
fprintf('Binary search found target: %d, Time: %.6f seconds\n', found_binary, time_binary);

%% Which is faster?
if time_linear < time_binary
    fprintf('Linear search was faster.\n');
elseif time_binary < time_linear
    fprintf('Binary search was faster.\n');  % <-- Expected result
else
    fprintf('Both searches took the same time.\n');
end
