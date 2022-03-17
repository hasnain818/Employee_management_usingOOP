time1 = Time.new
puts "#{time1.inspect}"

timeNow = Time.now
puts "#{timeNow.inspect}"

#Getting Components of Time
year = time1.year
month = time1.month
day = time1.day
weekDay = time1.wday
yearDay = time1.yday
hour = time1.hour
min = time1.min
sec = time1.sec
usec = time1.usec
zone = time1.zone

puts "#{year}/#{month}/#{day} #{hour}:#{min}:#{sec}:#{usec}\nWeek Day is #{weekDay}\nYear Day: #{yearDay}"

