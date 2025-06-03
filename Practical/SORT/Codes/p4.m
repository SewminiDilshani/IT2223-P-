% Your input array
arr = [8, 3, 5, 1, 7, 2];

% Call quickSort function
sortedArr = quickSort(arr);

% Display the sorted array
fprintf('Sorted array: ');
disp(sortedArr);

% Quick Sort function
function sortedArr = quickSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        return;
    end

    pivot = arr(1);  % Choose first element as pivot
    left = arr(arr < pivot);
    equal = arr(arr == pivot);
    right = arr(arr > pivot);

    sortedArr = [quickSort(left), equal, quickSort(right)];
end
