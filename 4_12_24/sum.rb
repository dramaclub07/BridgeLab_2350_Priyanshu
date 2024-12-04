var="ab123dcsjhfre895"

sum_of_digit=0

var.each_char do |char|
    i = char.to_i

if i>=1 && i<=9
    sum_of_digit+=char.to_i
    end
end

puts sum_of_digit
