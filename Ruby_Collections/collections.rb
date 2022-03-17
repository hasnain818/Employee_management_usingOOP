"""
There are 2 type of iterators in RubY
1. each
2. collect
"""

array  = Array.new(10) {|elem| elem = elem * 2}
print "Array is #{array}"

#Each Iterator
array.each {|elem| print "The element is #{elem}\n"}

#Collect Iterator
b = array.collect {|elem| elem * 3}
print "B array is #{b}"
