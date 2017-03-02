module StoreFront
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
end
