def postfix(expression)
    stack = []
    token = expression.split 

    tokens.each do |token|
        if token =~ /\d+/
            stack.push(token.to_i)
        else
            right = stack.pop
            left  = stack.pop

        case token

        when '+'
            stack.push(left + right )
        when '-'
            stack.push(left - right)
        when '*'
            stack.push(left * right)
        when  '/'
            stack.push(left / right)
        else
            raise "INVALID OPERATOR #{token}"
        end
    end
end
stack.last
end


=begin
#expression= gets.strip.split
stack = []
expression.each do |token|
    if token=~/\d+/
        stack.push(token.to_i)
    else
        b, a= stack.pop, stack.pop
        stack.push(a + b) if token == '+'

        stack.push(a - b) if token == '-'
        
        stack.push(a - b) if token == '*'
        
        stack.push(a / b) if token == '/'
    end
end

puts stack.pop
