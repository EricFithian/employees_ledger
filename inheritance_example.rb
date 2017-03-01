class Vehicle
  def initialize (input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def accelerate
    @speed += 10
  end
end

class Car < Vehicle
  attr_reader :fuel, :make, :model, :year

  def initialize (input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def print_info
    p "This #{year} #{make} #{model} has #{fuel} gallons of fuel left."
  end
end

class Bike < Vehicle
  attr_reader :speed, :type, :weight, :color

  def initialize (input_options)
    super
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end

  def print_info
    p "This #{color} #{type} bike weighs #{weight} pounds and has a top speed of #{speed} mph!"
  end
end

car1 = Car.new ({fuel: 1.5, make: "Toyota", model: "Camry", year: 2010})
bike1 = Bike.new ({speed: 15, type: "mountain", weight: 14, color: "red"})

car1.print_info
bike1.print_info
