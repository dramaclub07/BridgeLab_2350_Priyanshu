def is_palindrome
  str=""
  s.each_char do |c|
    if(c.match?(/[a-zA-Z0-9]/))
      str+=c.downcase
    end
  end
  i=0
  j=str.size-1
  while(i<j)
    return false if str[i] != str[j]
    i+=1;
    j-=1
  end
  true
end