#Binary Search Implementation

def binary_search():
    arr = [2, 5, 8, 12, 16, 23, 38, 42, 56, 72, 91]
    target = 42
    left = 0
    right = len(arr) - 1
    
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    
    return -1

result_index = binary_search()
if result_index != -1:
    print(f"Element found at index {result_index}.")
else:
    print("Element not found in the array.")
