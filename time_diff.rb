#THIS WAS DONE ON SOLO DAY

# def my_min(arr)
#   (0...arr.length).each do |idx|
#     return arr[idx] if arr.none? { |el| arr[idx] > el }
#     end
# end

def my_min(arr)
   smallest = arr[0]
   arr.each do |el| 
     smallest = el if smallest > el
   end  
   smallest
end
# The complexity of Phase I is O(n^2), as it uses one iteration nested inside an iteration
# the complexity of Phase II is O(n), Linear. I reckon.
# 

list = [ 0, 3, 5, 4, -5, 10, 1, 9]

puts "The result of My Min is: #{my_min(list)}"

#Largest Contiguous Subsum Phase 1.  Subarrs is already n^2. Then we have an inject nested inside another loop
#would thIS BE n^2 + n^2? ...starts to break down on longer arrays I reckon.
# def lc_subsum(arr)
#   subs = subarrs(arr)
#   sums = []
#   subs.each do |sub|
#     sums << sub.inject(:+)
#   end
#   sums.max
# end

def lc_subsum(arr) #Runs linereally across the array, checking 
  largest_sum = 0
  curr_sum = arr[0]
  return arr.max if arr.all? { |el| el < 0}
  (1...arr.length).each do |i|
    curr_sum < 0 ? curr_sum = arr[i] : curr_sum += arr[i]
    largest_sum = curr_sum if largest_sum < curr_sum
  end
  largest_sum
end

def subarrs(arr) #Phase I 
  subarrs = []
  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
       subarr = arr[i..j]
       subarrs << subarr
    end
  end
  subarrs
end


  
a = [5, 3, -7]
b = [2, 3, -6, 7, -6, 7]
c = [-5, -1, -3]
puts "The largest Contiguous subsum of #{a} is: #{lc_subsum(a)}"    
puts "The largest Contiguous subsum of #{b} is: #{lc_subsum(b)}"
puts "The largest Contiguous subsum of #{c} is: #{lc_subsum(c)}"