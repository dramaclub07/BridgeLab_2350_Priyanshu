marks = gets.to_i
if marks >= 90
  puts "Grade: A"
elsif marks >= 75
  puts "Grade: B"
elsif marks >= 50
  puts "Grade: C"
else
  puts "Grade: F"
end