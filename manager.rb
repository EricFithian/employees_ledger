require '../employee.rb'
require '../email_reportable.rb'

class Manager < Employee
  include EmailReportable 

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

manager1 = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2], give_all_raises: true, fire_all_employees: false)

p manager1.send_report 
