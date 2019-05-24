# frozen_string_literal: true

def swap(arr, first, second)
  arr[first], arr[second] = arr[second], arr[first]
end

def bubble_sort_by(arr)
  n = arr.length
  until n <= 1
    newn = 0
    for i in 1..n - 1
      compare = yield(arr[i - 1], arr[i])
      if compare >= 1
        swap(arr, i - 1, i)
        newn = i
      end
      n = newn
    end
  end
  arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
