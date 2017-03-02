class Bike
  attr_reader :speed, :type, :weight, :color
  def initialize (input_options)
    @speed = 0
    @direction = 'north'
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  include Vehicle_Behavior

  def ring_bell
    puts "Ring ring!"
  end

    def print_info
    p "This #{color} #{type} bike weighs #{weight} pounds and has a top speed of #{speed} mph!"
  end
end