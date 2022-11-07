# NAME ?
# PARAMETER ? first_number, operator, second_number
# RETURN ? the reuslt of the operation

def calculate(number_one, operator, number_two)
    # 5. Caculate
    # 5.1 Check the operator
  if operator == '+'
    # 5.2 do the correct math
    result = number_one + number_two
  elsif operator == '-'
    result = number_one - number_two
  elsif operator == '/'
    # result = number_one.to_f / number_two
    result = number_one.fdiv(number_two)
  elsif operator == '*'
    result = number_one * number_two
  else
    puts "Don't know who to do this operation! Choose a valid operator!"
  end
  return result
end
