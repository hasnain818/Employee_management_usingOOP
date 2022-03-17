#Ways of creating array in ruby

#1. Using new operator
array = Array.new
puts("Array created with new operator #{array}")

#2. Declaring array of specific size using Ruby
array1 = Array.new(10)
puts("Array created with default size #{array1}")

#3. Declaring array of specific size and by specific value using Ruby
array2 = Array.new(10, "Muhammad Hasnain Ali")
puts("Array created with default size #{array2}")

#Length of array can be found using size and length method
puts("Length of array using length method is #{array1.length}")
puts("Length of array using Size method is #{array1.size}")

#Creating and populating array using Blocks
array3 = Array.new(10) {|elem| elem = elem * 2}
puts("Array created with block is #{array3}")


#Another way of creating array in ruby is
array4 = Array.[](1, 2, 3, 4, 5)
puts("Array4 is #{array4}")

array5 = Array[1, 2, 3, 4, 5]
puts("Array5 is #{array5}")

#creating array using ranges
array6 = Array(0..20)
puts("Array 6 is #{array6}")
