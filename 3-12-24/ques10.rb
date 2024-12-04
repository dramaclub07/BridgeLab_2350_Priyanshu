n = gets.to_i
words = gets.split
puts words.map(&:downcase).uniq.size
