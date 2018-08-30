def bad_two_sum?(arr, target)
  return false if arr.count < 2
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      return true if arr[i] + arr[j] == target && i != j
    end
  end
  return false
end


def okay_two_sum?(arr, target)
  return true if arr.include?(0) && arr.include?(target)
  sorted = arr.sort 
  i, j = 0, arr.length-1
  until i == j
    if sorted[i] + sorted[j] > target 
      j -= 1
    elsif sorted[i] + sorted[j] < target 
      i += 1
    elsif sorted[i] + sorted[j] == target 
      return true
    end
  end
    
  return false
end

def two_sum?(arr, target)
  hash = {}
  arr.each_with_index {|el, i| hash[i] = el}
  hash.each { |key, value| return true if hash.values.}
  
end


arr = [0, 1, 5, 7]
puts bad_two_sum?(arr, 6) #true?
puts bad_two_sum?(arr, 10) #false?
puts ""
puts okay_two_sum?(arr, 6) #true?
puts okay_two_sum?(arr, 10) #false?
puts okay_two_sum?([0, 1, 10, 5, 7], 20) #false, breaks before it gets a chance to add middle twice.
puts ""
puts two_sum?(arr, 6) #true?
puts two_sum?(arr, 10) #false?