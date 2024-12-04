a,b,c=gets.to_i, gets.to_i, gets.to_i

if(a>b && a>c)
  puts "A largest"
elsif(b>a && b>c)
  puts "B LARGEST"
elsif(c>a && c>b)
  puts "C Largest"
else
  puts "none"
end
