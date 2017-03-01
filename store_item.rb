# #Hash without symbols:

# Item_1 = {
#   "Item" => "Football",
#   "Shape" => "Oval",
#   "Price" => 30,
#   "Popular" => true
# };

# Item_2 = {
#   :Item => "Soccer ball",
#   :Shape => "sphere",
#   :Price => 20,
#   :Popular => false
# };

# Item_3 = {
#   Item: "Basketball",
#   Shape: "sphere",
#   Price: 30,
#   Popular: true
# };

# p "The #{Item_1['Item']} is a #{Item_1['Shape']} that costs $#{Item_1['Price']}."
# p "The #{Item_2[:Item]} is a #{Item_2[:Shape]} that costs $#{Item_2[:Price]}."
# p "The #{Item_3[:Item]} is a #{Item_3[:Shape]} that costs $#{Item_3[:Price]}."

class SportsApparel
  attr_reader :item, :shape, :popular, :price
  attr_writer :price
  
  def initialize(input_options)
    @item = input_options[:item]
    @shape = input_options[:shape]
    @price = input_options[:price]
    @popular = input_options[:popular]
  end

  def print_info
    p "The #{item} is a #{shape} that costs $#{price}."  
    if popular == true
      p " This is a very popular item so buy it soon!"
    elsif popular == false
      p " This is not a very popular item so don't worry about rushing to buy it."
    else
      p "Stop messing up when coding in your items!"
    end

  end
end

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