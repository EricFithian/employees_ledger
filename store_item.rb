
class Food < SportsApparel
  attr_reader :shelf_life

  def initialize (input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end


item_1 = SportsApparel.new({:item => "football", :shape => "oval", :price => 20, :popular => true})
item_2 = SportsApparel.new({:item => "soccer ball", :shape => "sphere", :price => 30, :popular => false})
item_3 = SportsApparel.new({:item => "basketball", :shape => "sphere", :price => 20, :popular => true})

food_1 = Food.new ({:item => "banana", })


item_1.print_info
item_2.print_info
item_3.print_info
