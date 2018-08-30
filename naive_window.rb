def windowed_max_range(arr, size)
  current_max_range = nil
  idx = 0
  while (idx + size) < (arr.length + 1) 
    window = arr.slice(idx, size)
    current_max_range = window if current_max_range == nil || window.max - window.min > current_max_range.max - current_max_range.min 
    idx += 1
  end
  current_max_range
end


puts windowed_max_range([1, 0, 2, 5, 4, 8], 2).inspect #== 4 # 4, 8
puts windowed_max_range([1, 0, 2, 5, 4, 8], 3).inspect #== 5 # 0, 2, 5
puts windowed_max_range([1, 0, 2, 5, 4, 8], 4).inspect #== 6 # 2, 5, 4, 8
puts windowed_max_range([1, 3, 2, 5, 4, 8], 5).inspect #== 6 # 3, 2, 5, 4, 8