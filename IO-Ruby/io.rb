def calcFact(num)
  fact = 1
  counts = 1
  while counts.<=(num) do
    fact *= counts
    counts += 1
  end
  return fact
end

puts "Enter a value :"
val = gets
val  = Integer(val)
res = calcFact(val)
puts "Factorial of a result is: #{res}"


