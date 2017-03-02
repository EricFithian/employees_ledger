class Car
  attr_reader :fuel, :make, :model, :year
  def initialize (input_options)
    @speed = 0
    @direction = 'north'
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end

  include Vehicle_Behavior
  
  def honk_horn
    puts "Beeeeeeep!"
  end

  def print_info
    p "This #{year} #{make} #{model} has #{fuel} gallons of fuel left."
  end
end
