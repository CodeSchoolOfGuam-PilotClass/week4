# abstraction
# hide any complex logic/implementation details 
# also hide anything the user might not need

# class CoffeeMachine
#   def make_coffee(type)
#     boil_water
#     brew_coffee(type)
#     pour_in_cup
#     add_sugar_and_milk
#     return "#{type.capitalize} is ready!"
#   end

#   private

#   def boil_water
#     puts "Boiling water ..."
#   end

#   def brew_coffee(type)
#     puts "Brewing #{type} coffee ..."
#   end

#   def pour_in_cup
#     puts "Pouring coffee into the cup ..."
#   end

#   def add_sugar_and_milk
#     puts "Adding sugar and milk ..."
#   end
# end

# machine = CoffeeMachine.new
# puts machine.make_coffee("espresso")
# puts machine.boil_water


# encapsulation


# class BankAccount
#   def initialize(owner, balance)
#     @owner = owner
#     @balance = balance
#   end

#   # Public method: anyone can call these
#   def deposit(amount)
#     @balance += amount
#   end

#   def withdraw(amount)
#     if sufficient_funds?(amount)
#       @balance -= amount
#     else
#       puts "Insufficient funds!"
#     end
#   end

#   private

#   # Private method: only the class itself can call this
#   def sufficient_funds?(amount)
#     amount <= @balance
#   end
# end

# bankAccount = BankAccount.new("Leon", 100)
# puts bankAccount.withdraw(50)
# puts bankAccount.deposit(100)
# puts bankAccount.sufficient_funds?(100)

# Task: Create a Library class that manages books.
# Instructions:
# Define a Library class with methods to add and remove books.
# Use private methods to handle internal operations like updating the database.
# The user should interact with simple methods like borrow_book and return_book.


# require 'json'

# class Library
#   def initialize(file_name = "library.json")
#     @file_name = file_name
#     load_database  # Load existing data if available
#   end

#   def add_book(book)
#     @books << book
#     puts "#{book} has been added to the library."
#     update_database
#   end

#   def borrow_book(book)
#     if @books.include?(book)
#       @books.delete(book)
#       puts "You've borrowed '#{book}'."
#       update_database
#     else
#       puts "Sorry, '#{book}' is not available."
#     end
#   end

#   def return_book(book)
#     @books << book
#     puts "You've returned '#{book}'."
#     update_database
#   end

#   private

#   # Load the list of books from a JSON file (if it exists)
#   def load_database
#     if File.exist?(@file_name)
#       file_contents = File.read(@file_name)
#       @books = JSON.parse(file_contents)
#     else
#       @books = []
#     end
#   end

#   # Write the current list of books to the JSON file
#   def update_database
#     File.open(@file_name, 'w') do |file|
#       # Using 'pretty_generate' for readability
#       file.write(JSON.pretty_generate(@books))
#     end
#   end
# end

# # --- Usage Example ---

# library = Library.new

# library.add_book("1984")
# library.add_book("Brave New World")
# library.borrow_book("1984")
# library.return_book("1984")


