# Write a method element_replace that takes in an array and a hash. The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

# Soluation 1
def element_replace(arr, hash)
  ans = []
  arr.each do |a|
    if hash_element(a, hash)
      ans << hash[a]
    else
      ans << a
    end
  end
  return ans
end

def hash_element(ele, hash)
  hash.each do 
    if hash.has_key?(ele)
      return true
    end
  end
  return false
end

#Soluation 2
# def element_replace(arr, hash)
# 	ans = []
  	
#   	arr.each do |ele|
#     	if hash.has_key?(ele)
#           ans << hash[ele]
#         else
#           ans << ele
#         end
#     end
# 	return ans
# end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}

print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]

puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bark", "cat"=>"meow", "duck"=>"quack"}

print element_replace(arr2, hash2) # => ["bark", "meow", "mouse"]
