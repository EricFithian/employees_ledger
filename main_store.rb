require "./sports_apparel.rb"
require "./food.rb"


item_1 = StoreFront::SportsApparel.new({:item => "football", :shape => "oval", :price => 20, :popular => true})
item_2 = StoreFront::SportsApparel.new({:item => "soccer ball", :shape => "sphere", :price => 30, :popular => false})
item_3 = StoreFront::SportsApparel.new({:item => "basketball", :shape => "sphere", :price => 20, :popular => true})

food_1 = StoreFront::Food.new ({:item => "banana", :shape => "long", :price => 1, :popular => true, :shelf_life => 5})


item_1.print_info
item_2.print_info
item_3.print_info
food_1.print_info
