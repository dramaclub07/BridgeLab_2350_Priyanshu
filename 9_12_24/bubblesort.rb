def bubblesort(arr)
    n = arr.length
    (0...(n-1)).each do |i|
        if arr[i] > arr[i+1]
            arr[i] , arr[i+1] = arr[i+1] , arr[i]    
        end
    end

    if arr != arr.sort
        bubblesort
    end
    arr
end

puts puts "ENTER THE LENGTH OF THE ARRAY -:>"
length = gets.chomp.to_i
arr = []

puts "ENTER #{length} elements of the array"
length.times do
    arr << gets.chomp.to_i
end

puts bubblesort(arr)