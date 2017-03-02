require '../employee.rb'
require '../email_reportable.rb'

class Intern < Employee
  include EmailReportable
  include Actualize 

  attr_writer :send_report

  def initialize (input_options)
    @send_report = input_options(:send_report)
  end
end

intern1 = Intern.new({first_name: "Mike", last_name: "McDonald", salary: 0, active: true})

p intern1.send_report
