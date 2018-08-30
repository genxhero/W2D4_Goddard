def my_min(arr)
   smallest = arr[0]
   arr.each do |el| 
     smallest = el if smallest > el
   end  
   smallest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

