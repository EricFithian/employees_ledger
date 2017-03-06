# # Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the “p” keyword.

# foods = []

# puts "What is the name of your five favorite foods?" 

# 2.times do |i|
#   puts "Number #{i + 1} is:" 
#   answer = gets.chomp
#   foods << answer
#   i += 1
# end

# #p foods

# #Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. For example

# # foods.each do |food|
# #   puts "I love #{food}"
# # end

# #Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:

# counter = 0

# foods.each do |food|
#   puts "#{counter + 1}. #{food}"
#   counter += 1
# end

#Problem 2: Create and define a variable ‘count = 0’. Using a loop and the ‘+=’ operator, output the following:

# counter = 0

# 11.times do 
#   puts "#{counter}"
#   counter += 1
# end

# results = 5 

# unless results == true
#   puts "Hi"
# else
#   puts "Wrong"
# end

#Question 2, part D: Look at the conditional below. What value(s) can the variable ‘result’ be for it to output “HELLO!” What values will it not output? Experiment in Sublime:

# result = 5 

# unless result 
#   puts "HELLO!"
# end

#Question 2, part E: If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. If Sam can make crepes or Sally can speak French, they should marry. 

# sam_recipes = ["eggs", "waffles", "hashbrowns", "bagels", "fries", "burgers", "pasta", "bread", "breadsticks", "breadcrumbs", "pizza"]
# sally_languages = ["English", "American", "Spanish", "French", "Portugese", "Albanian"]

# if sam_recipes.length > 10 && sally_languages.length > 5
#   puts "Sam and Sally should date."
# elsif sam_recipes.include?("crepes") || sally_languages.include?("French")
#   puts "Sam and Sally should marry."
# end 

#Question 3, HASHES! Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes. 

# 2.times do |i|
#   puts "Number #{i + 1} is:" 
#   answer = gets.chomp
#   foods << answer
#   i += 1
# end

# customer_info = []

# 2.times do
#   customer = {}
#   puts "What is your first name?"
#   customer["first_name"] = gets.chomp
#   puts "What is your last name?"
#   customer["last_name"] = gets.chomp
#   puts "What is your email?"
#   customer["email"] = gets.chomp
#   customer["account_number"] = rand(10 ** 10)
#   customer_info << customer
# end

# customer_info.each do |customer|
#   puts "FIRST NAME: #{customer["first_name"]}"
#   puts "LAST NAME: #{customer["last_name"]}"
#   puts "EMAIL: #{customer["email"]}"
#   puts "ACCT #: #{customer["account_number"]}"
# end

#Question 4, Final Review. Create a program that puts your class into groups! Have the program request the user to enter each student’s names.  Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:

puts "Please enter the name of every student."
students = []

4.times do |counter|
  puts "Student number #{counter + 1}'s name is:"
  student = gets.chomp
  students << student 
end  

# p students

2.times do |counter|
  puts "Group: #{students.sample(2)}"
end

