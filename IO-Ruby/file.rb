# file = File.new("IO-Ruby/data.txt")
# #To read each character of a file
# if file
#   result = ""
#   file.each_byte {|char| result+=char.chr}
#   result = result.strip
#   puts result
#   #closing File
#   file.close
# end

# #We can also read line by line using IO.readlines
# data = IO.readlines("IO-Ruby/data.txt")
# data = data.select {|line| line = line.strip()}
# puts "Data in file is #{data}"

#Now We will rename file using rename method
#File.rename("IO-Ruby/data.txt", "IO-Ruby/dataUpdated.txt");
# file = File.open("IO-Ruby/dataUpdated.txt", "r") {|f| puts f.read; f.close}
# File.delete("IO-Ruby/dataUpdated.txt")

#Creating a new file
myFile = File.new("IO-Ruby/data.txt", "w")
myFile.write("Some dummy data in a file")
myFile.close
