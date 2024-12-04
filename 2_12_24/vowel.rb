char = gets.chomp.downcase
if ["a", "e", "i", "o", "u"].include?(char)
  puts "Vowel"
else
  puts "Consonant"
end
