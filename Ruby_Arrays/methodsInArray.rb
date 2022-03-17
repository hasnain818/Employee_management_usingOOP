BEGIN{
  puts "We are going to explore methods of array in this tutorial"
}

digits = Array(0..20)
puts("First element of array is: #{digits.first}")
puts("Last element of array is: #{digits.last}")
puts("Taking first n elements of array: #{digits.take(10)}")
puts("Dropping first N elements of array: #{digits.drop(5)}")

"""
All above methods will not change or update array.

"""
puts("Digits are now #{digits}")

#Now lets permanently remove element from an array

lastElem = digits.pop
puts("#{lastElem} is removed successfully ")
puts("Digits are now #{digits}")

#shift method can be used to remove permanently the first element of an array

firstElem = digits.shift
puts("#{firstElem} is removed successfully")
puts("Digits are now #{digits}")


#New elements can be added using push, it will insert element at the last
#pos

digits.push(20)
puts("Digits are now #{digits}")

#Just like shift remove first element from array
#unshift add an element to start of an array

digits.unshift(0)
puts("Digits are now #{digits}")

#To delete element permanently from an array use delete method
digits.delete(15)
puts("Digits are now #{digits}")


#To delete an element at specific position use delete_at
digits.delete_at(5)
puts("Digits are now #{digits}")


# we can reverse an array, but it will not mutate original array
puts("Digits in reverse are #{digits.reverse}")

#Select method in ruby
filtered = digits.select { |digit| digit > 5 }
puts("Digits > 5 are #{filtered}")

#we can use include method to check if some element exists in it or not
puts digits.include? 5

#lets create 2D array and flatten it
array = [1, 2, [3, 4, 5], [6, 7]]
print("Before Flattening array #{array}\n")
flatten = array.flatten
print("After flattening... #{flatten} \n")

#joining array
strDigits = digits.join("*")
print("Joined digits are: #{strDigits}\n")

#each method
puts "Join method example"
digits.each { |digit| print "#{digit} "}
print("\n")

#Map
puts "Map method example"
digits.map { |digit| print "#{digit} "}
print("\n")


#lets push some duplicate elements in array
digits.push(20)
digits.push(13)

#lets remove duplicates from array
uniques = digits.uniq
puts("Digits are: #{digits}")
puts("Uniques are: #{uniques}")

#Concat method
multiples = Array.new(10) { |elem| elem = elem * 3}
puts multiples

digits.concat(multiples, [1,3,4,5])

puts "Digits are now #{digits}"

END{
  puts "I Hope you enjoyed the tutorial. Follow us for more such awesome tutorials"
}

