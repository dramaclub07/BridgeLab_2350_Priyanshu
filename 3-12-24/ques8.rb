#distinct values:)
 n = gets.to_i
 arr = gets.split.map(&:to_i)
 puts arr.uniq.size

=begin
#set
require 'set'
def distinct_element(array)
    distinct_set = Set.new(array)
    return distinct_set.to_a
end

#hashmap

def distinct#(array)
    distinct_hash = {}

    array.each{ |elem| distinct_hash[elem] = true}

    return distinct_hash.keys
end

