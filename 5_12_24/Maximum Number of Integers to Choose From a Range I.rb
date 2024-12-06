# @param {Integer[]} banned
# @param {Integer} n
# @param {Integer} max_sum
# @return {Integer}
def max_count(banned, n, max_sum)
    banned_set = Set.new(banned)
    sum = 0
    count = 0

    (1..n).each do |i|
    next if banned_set.include?(i)

    return count if sum + i > max_sum

    sum += i
    count +=1
    end
count 
end