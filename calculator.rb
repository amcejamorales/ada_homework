# calculator program allows user to perform simple operations (+, -, *, /) between two operands

# declare methods for each operation
def add(num1, num2)
  return num1 + num2
end

def sub(num1, num2)
  return num1 - num2
end

def mult(num1, num2)
  return num1 * num2
end

def div(num1, num2)
  if num2 == 0
    puts "Please do not divide by zero. You're going to rip a hole in the time-space continuum!"
  else
    num1 / num2
  end
end

# ask user for operation & check if acceptable, if so ask for numbers
puts "Would you like to add (+), subtract (-), multiply (*), or divide (/)?"
operation = gets.chomp

case operation
when "add", "+", "subtract", "-", "multiply", "*", "divide", "/"
  puts "What's the first number?"
  first_num = gets.chomp.to_i
  puts "What's the second number?"
  second_num = gets.chomp.to_i
else
  puts "I do not recognize that operation."
end

# perform operation based on input
case operation
when "add", "+"
  puts add(first_num, second_num)
when "subtract", "-"
  puts sub(first_num, second_num)
when "multiply", "*"
  puts mult(first_num, second_num)
when "divide", "/"
  puts div(first_num, second_num)
end
