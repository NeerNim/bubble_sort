def swap(arr, a, b)
    arr[a], arr[b]= arr[b], arr[a]
end


def bubble_sort_by(arr)
    
    n = arr.length
    until n <= 1
        newn =0
        for i in 1..n-1
            compare = yield(arr[i-1], arr[i])
            if compare >= 1
                swap(arr, i-1, i)
                newn = i
            end
    n = newn
        end

    end
    arr
end

puts bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length -  right.length
    end
