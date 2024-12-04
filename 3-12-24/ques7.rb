#valid paranthesis 

s=gets.strip
stack = []
pairs = { ')' => '(' , '}' => '{', ']' => '['}

s.each do |char|
    if pairs.values.include?(char)
        stack.push(char)
    elsif pairs.keys.include?(char)
        if stack.empty? || stack.pop != pairs[char]
            puts "false"
            exit
        end
    end
end

puts stack.empty? ? "true" : "false"