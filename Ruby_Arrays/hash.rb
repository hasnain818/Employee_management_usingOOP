months = Hash.new("month")
months = { "1" => "January", "2" => "Feburary", "3" => "March"}
puts(months)
keys = months.keys
puts "Keys in hash 'months' are #{months.keys}"

#Now we will map on each Key and return its values
keys.map {|key| puts "#{months[key]}"}

#Lets add another key in hash
months["4"] = "April"
months["5"] = "May"

puts "#{months}"

# we can clear hash by clear function
months.clear

puts "#{months}"
