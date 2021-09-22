#1
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.each do |num|
  if num == number
    puts "number #{number} is in the array"
  end
end
20.times {print "="}
puts
#2

print "Input a number from 0 to 100:"
input = gets.chomp.to_i
if input < 0 
  puts "Thats a negative number, please input from 0 to 100"
elsif input <51
  puts "That number you entered is between 0 and 50"
elsif input <101
  puts "That number you entered is between 51 and 100"
else
    puts "That number you entered greater that 100"
end
20.times {print "="}
puts
#3 
count = 1
while input != "STOP"
  puts "#{count}!!I'll never STOP until you said so"
  input = gets.chomp
  count +=1
end
puts "Okay, bye"
20.times {print "="}
puts

arr = [6,3,1,8,4,2,10,65,102]
newArr = []
arr.each{|digit| 
    if digit % 2 == 0
        newArr.push(digit)
    end}
puts newArr