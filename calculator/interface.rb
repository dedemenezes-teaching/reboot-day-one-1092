# WHILE LOOP SINTAX
# WHILE condition_true
# END

# 1. Say welcome to the user
puts "Welcome to calculator"

# HOW TO FORCE OURSELVES INSIDE THE LOOP
user_answer = 'y'

# START OF OUR LOOP
# Find condition to start/break our loop
while user_answer == 'y'
  # 2. Ask for first number
  # 2.1 print to the user what we want
  puts 'Enter first number:'
    # 2.2 receive the input from the user
  first_number = gets.chomp.to_i

  # 3. Ask for the operator
  puts 'Choose an operation [+|-|/|*]'
  operator = gets.chomp

  # 4. Ask for second number
  puts 'Enter second number: '
  second_number = gets.chomp.to_i


  # CALCULATE
  # 6. Print the result to the user
  puts calculate(first_number, operator, second_number)

  puts 'Do you want to calculate again? [Y/N]'
  user_answer = gets.chomp
end
