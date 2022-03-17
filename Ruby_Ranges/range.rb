"""
Ranges are of three types in Ruby
1. Ranges as Sequences
2. Ranges as Conditions
3. Ranges as Intervals

"""
#Inclusive Range
digits = (0..9)
puts digits

#As u can see we have range object except list of numbers, so we will
#simply convert it to list using to_a method

digits = digits.to_a
print "Inclusive Range is: #{digits.to_a}\n"

#Another way of creating range exclusive series is using ... operator
excDigits = (0...9)
print "Exclusive Range is: #{excDigits.to_a}\n"

letters = ('a'..'z')
print "Letters are: #{letters.to_a}\n"

wordsPermutations = ("baa".."baz")
print "Words premutations are: #{wordsPermutations.to_a}\n"


"""
Case Study: Print Grade of student using Switch Statement and ranges
"""

marks = 50

grade = case marks
when 0..40 then "F"
when 41..50 then "E"
when 51..60 then "D"
when 61..70 then "C"
when 71..80 then "B"
when 81..90 then "A"
else "A+"
end

print "Grade is #{grade}\n"

"""
To see if some value lies in interval, we can also use === operator
"""

puts "#{(0..9) === 5}"
puts "#{('a'..'c') == 'd'}"
