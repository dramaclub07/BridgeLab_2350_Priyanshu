def binarysearch(arr, target)
    low, high = 0, arr.length - 1
    while(low <= high)
        mid = (low + high) / 2
        return mid if arr[mid] == target
        arr[mid] < target ? low = mid + 1 : high = mid - 1
    end
    -1
end
puts "enter length of arr"
n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i).sort
target = gets.chomp.to_i
puts binarysearch(arr, target)
