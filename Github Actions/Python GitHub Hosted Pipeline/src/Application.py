#this is a test commit  
def binary_search(arr, target):
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

def test_binary_search():
    # Test normal scenario
    arr = [2, 5, 8, 12, 16, 23, 38, 42, 56, 72, 91]
    target = 42
    assert binary_search(arr, target) == 7

    # Test when element not found
    arr = [2, 5, 8, 12, 16, 23, 38, 42, 56, 72, 91]
    target = 100
    assert binary_search(arr, target) == -1

    # Test with empty array
    arr = []
    target = 42
    assert binary_search(arr, target) == -1

    # Test with single element found
    arr = [42]
    target = 42
    assert binary_search(arr, target) == 0

    # Test with single element not found
    arr = [23]
    target = 42
    assert binary_search(arr, target) == -1

    # Test with duplicate elements
    arr = [2, 5, 8, 12, 12, 16, 23, 38, 42, 56, 72, 91]
    target = 12
    assert binary_search(arr, target) == 3  # Returns the first occurrence

    # Test with large array
    arr = list(range(10**6))  # Array with elements from 0 to 999999
    target = 999999
    assert binary_search(arr, target) == 999999

    # Test with negative numbers
    arr = [-10, -5, -3, -1, 0, 5, 8, 12, 16, 23, 38, 42]
    target = -3
    assert binary_search(arr, target) == 2

    # Test with floating point numbers
    arr = [1.1, 2.2, 3.3, 4.4, 5.5]
    target = 3.3
    assert binary_search(arr, target) == 2

    print("All tests passed!")

test_binary_search()

