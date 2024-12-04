def find_quadrant(x, y)
  return 1 if x > 0 && y > 0
  return 2 if x < 0 && y > 0
  return 3 if x < 0 && y < 0
  return 4 if x > 0 && y < 0
end

def valid_input?
  input = gets.chomp.split
  return false unless input.size == 2
  x, y = input.map(&:to_f)
  return false if x == 0 || y == 0
  @x, @y = x, y
  true
end

def main
  puts "Enter the coordinates (x y):"
  
  unless valid_input?
    puts "Invalid input. Please enter two non-zero numbers."
    return
  end

  puts "The point lies in quadrant #{find_quadrant(@x, @y)}."
end


main
