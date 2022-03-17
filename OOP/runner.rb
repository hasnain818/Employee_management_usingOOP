require_relative "Employee.rb"

#employees array
$employees = [] #global variable
choice = -1


"""
This function will recieve infromation about user
Parameters: None
Returns: None
"""
def getInfo(index = -1)
  puts "Enter Name: "
  name = gets
  name = name.strip()
  puts "Enter Email: "
  email = gets
  email = email.strip()
  #We will check if employee already exits, we will not add it in employees list
  filtered = $employees.filter { |employee| employee.get_email == email}
  if filtered.length > 0
    print "Employee with email #{email} already exists.\n"
    while filtered.length != 0 do
      puts "Enter email: "
      email = gets
      filtered = $employees.filter { |employee| employee.get_email == email}
    end
  end
  puts "Enter Password: "
  password  = gets
  while password.length < 8 do
    puts "Minimum Length for password should be 8. "
    puts "Please re enter password"
    password = gets
  end

  #Now taking years of experience as input
  puts "Enter years of experience. "
  begin
    yoe = Integer(gets)
  rescue
    puts "Please enter valid year of experience"
    retry
  end

  #Now we will create Employee and push it in array
  emp = Employee.new(name, email, password, yoe)
  if index != -1
    $employees.insert(index, emp)
  else
    $employees.push(emp)
  end
end



#Main Logic
while true do
  puts "===========Welcome To User Hub============"
  puts "Enter 1 to add user to hub. "
  puts "Enter 2 to remove user from hub. "
  puts "Enter 3 to update user in hub. "
  puts "Enter 4 to display all users. "
  puts "Enter 5 to display total users in hub. "
  puts "Enter 6 to quit. "
  choice = Integer(gets)

  if choice == 1
    getInfo()
  elsif choice == 2
    puts "Enter Email"
    email = gets
    index = $employees.find_index { |employee| employee.get_email == email}
    if index >=0 && index < $employees.length
      $employees.delete_at(index)
      puts("Removed #{email}")
    end
  elsif choice == 3
    puts "Enter Email"
    email = gets
    index = $employees.find_index { |employee| employee.get_email == email}
    if index >=0 && index < $employees.length
      getInfo(index)
    end

  elsif choice == 4
    if $employees.length > 0
      $employees.map {|employee|
        header = "="*20<<"Person Details"<<"="*20<<"\n"
        print header
        print employee.to_s
        print "="*header.length<<"\n"

      }
    else
      puts "No employees in Hub"
    end

  elsif choice == 5
    puts Employee.total_users
  elsif choice == 6
    break
  else
    puts "Invalid Choice"
  end
end


