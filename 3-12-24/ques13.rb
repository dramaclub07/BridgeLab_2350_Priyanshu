n = gets.to_i
fib = [0, 1]

(2..n).each do
  fib << fib[-1] + fib[-2]
end

puts fib[n]
