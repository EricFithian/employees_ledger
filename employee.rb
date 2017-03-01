# employee1 = ["Eric", "Fithian", 80000, true]
# employee2 = ["Stephen", "Allen", 71000, false]

# #Eric Fithian makes $80000 per year
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year"
# p employee2[0] + " " + employee2[1] + " makes $" + employee2[2].to_s + " per year"

# #Hash without symbols

# employee1 = {
#   "first_name" => "Eric", 
#   "last_name" => "Fithian",
#   "salary" => 80000,
#   "still_employed" => false
# };

# #Hash with symbols

# employee2 = {
#   :first_name => "Arta",
#   :last_name => "Bardhi",
#   :salary => 750000,
#   :still_employed => false
# };

# #We love JS type syntax

# employee3 = {
#   first_name: "John",
#   last_name: "Smith",
#   salary: 950000,
#   still_employed: true
# }

# p "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} per year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} per year."
# p "#{employee3[:first_name]} #{employee3[:last_name]} makes #{employee3[:salary]} per year."

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year"
  end
end

employee1 = Employee.new("Eric", "Fithian", 850000, true)
employee2 = Employee.new("James", "Cordingley", 50000, false)

employee1.print_info
employee2.print_info
