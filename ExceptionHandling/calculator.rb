def add(num1, num2)
  return num1+num2
end

def sub(num1, num2)
  return num1-num2
end

def mul(num1, num2)
  return num1*num2
end

def div(num1, num2)
  result = nil
  begin
    result = num1/num2
    rescue
      puts "Division by 0 occur"
      puts "Enter num 2 again: "
      num2 = Integer(gets)
      retry
  end
  return result
end

choice = -1
puts "\n==========================Your Math's Friend==============================\n"
while true do
  puts "\t======================================\n"
  puts "Enter 1 to add two numbers"
  puts "Enter 2 to subtract two numbers"
  puts "Enter 3 to multiply two numbers"
  puts "Enter 4 to divide two numbers"
  puts "Enter 5 to quit"
  puts "\t======================================\n"
  choice = Integer(gets)
  if choice == 5
    break
  else
    puts "Enter num1: "
    num1 = Integer(gets)
    puts "Enter num2: "
    num2 = Integer(gets)
    if choice == 1
      puts "Addition of two numbers is: #{add(num1, num2)}"
    elsif choice == 2
      puts "Subtraction of two numbers is: #{sub(num1, num2)}"
    elsif choice == 3
      puts "Multiplication of two numbers is: #{mul(num1, num2)}"
    elsif choice == 4
      puts "Division of two numbers is: #{div(num1, num2)}"
    else
      puts "Invalid choice"
    end
  end
end





