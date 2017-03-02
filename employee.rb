module Actualize
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
end

employee1 = Employee.new("Eric", "Fithian", 850000, true)
employee2 = Employee.new("James", "Cordingley", 50000, false)

employee1.print_info
employee2.print_info
