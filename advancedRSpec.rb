# Mocking:
  # Simulating the behavior of real objects in controlled ways.
  # Useful for isolating the code under test.
# Stubbing:
  # Providing predefined responses to method calls during a test.
  # Helps test methods that depend on external services or complex logic.


# class Student
#   attr_accessor :name, :grades

#   def initialize(name)
#     @name = name
#     @grades = []
#   end

#   def average_grade
#     sleep(5)
#     return 0 if grades.empty?
#     total = grades.reduce(:+) # sum up all items in the array
#     return total / grades.size # going to get the length of the array
#   end
# end




# student = Student.new("Damen")
# puts student.name
# student.grades = [100, 90, 80]
# p student.grades
# p student.average_grade

# Create a Library class with a method fetch_books_from_api that simulates fetching book data from an external API.
# Use stubbing to simulate the API response in your tests.



class Library
  def fetch_books_from_api
    # Simulate a call to an external API
    sleep(2) # Simulates network delay
    return ["Book 1", "Book 2", "Book 3"]
  end

  def books
    @books ||= fetch_books_from_api
  end

  # def books
  #   if @books.nil?
  #     @books = fetch_books_from_api
  #   end
  #   @books
  # end  
end

# library = Library.new
# puts library.fetch_books_from_api