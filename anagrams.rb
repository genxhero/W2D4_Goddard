def first_anagram?(string, target)
  return false if string.length != target.length
  anagrams = string.split('').permutation
  return true if anagrams.include?(target.split('')) 
  return false
end

def second_anagram?(string, target)
   return false if string.length != target.length 
   arr = target.split('') 
   string.chars do |char|
      if arr.include?(char)
        arr.delete_at(arr.index(char))
      end
  end
    (arr.empty?) ? (return true ): (return false)
end

#going to be terrible, relatively speaking. it's 2 sorts at n^2 in a worst case scenario
#but it's also splitting which may add complexity too?  Split is linear I think

def third_anagram?(string, target) 
  return true if string.split('').sort == target.split('').sort
  return false
end

def fourth_anagram?(string, target)
  tar, str = {}, {}
  string.chars { |char| str.has_key?(char) ? str[char] += 1: str[char] = 1 }
  target.chars { |char| tar.key?(char) ? tar[char] += 1: tar[char] = 1 }
  return true if tar == str
  return false
end

puts "FIRST ANAGRAM"
puts first_anagram?("elvis", "lives") #true
puts first_anagram?("dino", "fred") #false
puts ""
puts "SECOND ANAGRAM"
puts second_anagram?("allergy", "gallery") #true
puts second_anagram?("barn", "yolk") #false
puts ""
puts "THIRD ANAGRAM"
puts third_anagram?("earth", "heart")
puts third_anagram?("cafe", "bork")
puts ""
puts "FOURTH ANAGRAM"
puts fourth_anagram?("repaint", "painter")
puts fourth_anagram?("pollywog", "boggard")