array=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

target=42;
found=false;

low=1;
high=length(array);
mid=0;

i=low;
while i<=high
    %disp(array(i))
    mid=(low+high)/2;
    i=i+1;

     if mid==target
        found=true;
        index=i;
        break;
     end
end

if found
    fprintf("Target element is found at index: %d \n",index)
else
    fprintf("Target element is not found \n")
end