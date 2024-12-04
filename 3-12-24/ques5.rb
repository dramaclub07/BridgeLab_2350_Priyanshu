def rotatearr(arr, k)
    k = k % arr.length

    rotatearr = arr[-k..-1] + arr[0...(arr.length - k)]
    rotatearr
end

n = gets.to_i
array = gets.split.map(&:to_i)
k = gets.to_i

result = rotatearr(array, k)

puts result.join(" ")