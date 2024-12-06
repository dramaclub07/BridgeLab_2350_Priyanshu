  
  def can_change(start, target)  
    return false if start.gsub('_', '') != target.gsub('_', '')  

    i = 0  
    j = 0  
    n = start.length  

    while i < n && j < n  
      # Move i to the next non-underscore character  
      i += 1 while i < n && start[i] == '_'  
      # Move j to the next non-underscore character  
      j += 1 while j < n && target[j] == '_'  

      # If we reached the end of either string, break  
      break if i == n || j == n  

      # Check the rules for 'L' and 'R'  
      if (start[i] == 'L' && i < j) || (start[i] == 'R' && i > j)  
        return false  
      end  

      # Move to the next characters  
      i += 1  
      j += 1  
    end  
    
    true  
  end  