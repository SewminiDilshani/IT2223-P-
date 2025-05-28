## 📘 Search Algorithm Overview
🔹 Linear Search
Definition:
A simple searching technique that checks each element one by one until the target is found or the end is reached.

Time Complexity:

-Best case: O(1) — if the target is the first element

-Worst case: O(n) — if the target is the last element or not found

Use Case:
Ideal for unsorted arrays or small datasets where setup time is minimal.

🔹 Binary Search
Definition:
A faster method that works only on sorted arrays by repeatedly dividing the search interval in half.

Time Complexity:

-Best case: O(1)

-Worst case: O(log n)

[pr1.m](./Codes/pr1.m)

✅ Output
---
![1-1.png](./Outputs/1-1.png)
---

## 📋 How Selection Sort Works

1. Take an array of numbers.
2. Set the first element as the current position.
3. From the current position, find the smallest number in the remaining array.
4. Swap the smallest number with the current position.
5. Move to the next position and repeat steps 3 and 4 until the entire array is sorted.

[pr2.m](./Codes/pr2.m)

✅ Output
---
![2-1.png](./Outputs/2-1.png)
---
