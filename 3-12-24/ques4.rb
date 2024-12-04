puts "Enter a number"

n = gets.chomp.to_i
matrix = []
n.times do
    matrix <<gets.chomp.split.map(&:to_i)
end

mqsq=matrix[0].sum

def is_magic_sq?(matrix, mqsq)
    (0...n).each do |i|
        return false if matrix[i].sum != mqsq
        return false if matrix.map{|row| row[i] }.sum != mqsq
    end
    return false if (0...n).map { |i| matrix[i][j]}.sum  != mqsq
    return false if (0...n).map { |i| matrix [i][n-i-1]}.sum != mqsq

    true
end
puts is_magic_sq?(matrix, n, mqsq)? "Yes" : "No"
