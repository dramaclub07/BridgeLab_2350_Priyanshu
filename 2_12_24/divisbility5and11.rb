number = gets.to_i
if number % 5 == 0 && number % 11 == 0
  puts "Divisible by both 5 and 11"
else
  puts "Not Divisible by both"
end
