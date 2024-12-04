i = gets.chomp.to_i

counter = 0;
for j in 2..i/2
    
    if i%j == 0
        counter+=1
        puts "#{i} is not a prime number"
    end
end

if counter==0
        puts "#{i} is a prime number"
    end
