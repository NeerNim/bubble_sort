# frozen_string_literal: true

def swap(arr, first, second)
  arr[first], arr[second] = arr[second], arr[first]
end
def bubble_sort(arr)
  n = arr.length
  until n <= 1
    newn = 0
    for i in 1..n - 1 
      if arr[i - 1] > arr[i]
        swap(arr, i - 1, i)
        newn = i
      end
    end
    n = newn
  end
  arr
end

puts bubble_sort([5, 3, 7, 6])
