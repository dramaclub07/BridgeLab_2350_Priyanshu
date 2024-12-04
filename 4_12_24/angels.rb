a, b, c = gets.to_i, gets.to_i, gets.to_i
if a + b + c == 180 && a > 0 && b > 0 && c > 0
  puts "Valid Triangle"
else
  puts "Invalid Triangle"
end
