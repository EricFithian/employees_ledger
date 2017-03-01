class Employee
  attr_writer :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    #give every employee this manager is in charge of a raise.
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end 
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

# They can do everything a regular employee can plus send a report

class Intern < Employee
  attr_writer :send_report

  def initialize (input_options)
    @send_report = input_options(:send_report)
  end

  def send_report
    p "I just sent a report"
    p "Report received"
  end

end

intern1 = Intern.new({first_name: "Mike", last_name: "McDonald", salary: 0, active: true})

