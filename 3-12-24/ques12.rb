n = gets.to_i
trib = [0, 1, 1]

(3..n).each do
  trib << trib[-1] + trib[-2] + trib[-3]
end

puts trib[n]
