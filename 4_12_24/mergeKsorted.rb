class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
   end

   #create a new, sort , update;
   def merge_k_lists(lists)
     arr = [] 

     lists.each do |list|
     current = list
     while current 
        arr << current.val
        current = current.next
      end
    end

    arr.sort!

    dummy = ListNode.new(0)
    current = dummy 
    
    arr.each do|value|
        current.next = ListNode.new(value)
        current = current.next
    end

    dummy.next
end

      

    