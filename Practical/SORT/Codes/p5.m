arr=[8,3,5,1,7,2];

function sortedArr = mergeSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        return;
    end

mid = floor(length(arr)/2);
    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));

    sortedArr = merge(left, right);
end

function mergedArr = merge(left, right)
    mergedArr = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) < right(1)
            mergedArr = [mergedArr, left(1)];
            left(1) = [];
        else
            mergedArr = [mergedArr, right(1)];
            right(1) = [];
        end
    end
    mergedArr = [mergedArr, left, right];
end

sortedArr = mergeSort(arr);
fprintf("Sorted array: ");
disp(sortedArr);
