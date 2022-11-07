# TODO: you can build your horse race program here!

# DATA STRUCTURE
# HOW TO STORE ALL YOUR HORSES
horses = ['Black', 'Jack', 'Star', 'Mars', 'Pegasus']

# Create a place to store users balance => integer
user_balance = 10
# ============================

puts 'Welcome  to The race!'

# Create this variable to FORCE ourselves inside the loop
user_answer = 'y'

# Create a loop to keep asking the user if she/he wants to keep playing (which condition?)
while user_answer == 'y' # true => false
  if user_balance >= 10
    # 1. Print all the horses name
    puts horses.join(', ')

    # 2. user choose a horse
    puts "Choose your horse:"
    horse = gets.chomp.capitalize #=> Pegasus || pegasus

    # 3. Run the race
    # 3.1 Get a winner (random element from all your horses)
    winner = horses.sample
    # 3.2 Compare user's bet with winner
    if horse == winner
      # 4. Print out in the terminal a message telling the user if they won/loose
      puts "You won! Congratulations"

      # Update users balance based on races result
      user_balance = user_balance + 50
      # user_balance += 50
      puts "Your balance is #{user_balance}"
    else
      # 4. Print out in the terminal a message telling the user if they won/loose
      puts "You lost! Sorry..."
      # Update users balance based on races result
      # user_balance = user_balance - 10
      user_balance -= 10
      puts "Your balance is #{user_balance}"
    end

    puts 'Would you like to change your choice?[Y/N]'
    user_answer = gets.chomp
  else
    # BREAK THE WHILE LOOP by
    # Making the condition FALSE
    puts 'Sorry your a broke! Get more money gambler zo/'
    user_answer = 'n'
  end
end
