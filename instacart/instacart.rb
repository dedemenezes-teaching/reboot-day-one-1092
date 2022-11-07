# TODO: you can build your instacart program here!

# Welcome the user
puts "Welcome to Christmas List!"

# Create a store with item and prices (HASH?!)
store = {
  # key: value
  'banana' => 1.0,
  'kiwi' => 2.0,
  'mango' => 1.5,
  'aspargus' => 5
}


# Create a cart (Array? Hash?)
cart = {
  # product => quantity
}

# Display product list
puts 'In our store today:'
store.each do |product, price|
  puts "#{product.capitalize}: #{price}€"
end


# initializing variable to force inside loop
user_choice = nil

# Keep asking until the user types 'quit'
until user_choice == 'quit'
  # Ask the user what they want to buy
  puts "Which item? (or 'quit' to checkout)"
  # Store the user choice
  user_choice = gets.chomp.downcase #=> 'mango'
  # Can only add products that exist
  # check if user choice is a key in the store hash
  if store.key?(user_choice)
    # ask  for the quantity
    puts 'How many?'
    quantity = gets.chomp.to_i

    # creating a key value pair in the cart hash
    cart[user_choice] = quantity
  else
    puts "Don't have #{user_choice}"
  end
  # Keep asking until the user types 'quit'
end

# Calculate and display the final bill
# initialize the counter!
bill = 0
# go over each product in the cart
# {'mango' => 2}
p cart
cart.each do |product, quantity|
  # access the price for the product
  product_price = store[product]
  # add the price to the sum
  bill += product_price * quantity
end
# sum the value for each one of them
puts '> -------BILL---------'
puts bill
puts '> --------------------'
