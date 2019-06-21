
class LaptopHunt::Laptop
  
  attr_accessor :model, :price, :link

  @all = []

  def initialize(name, model)
   @model = model
   @price = price
 end

 def self.all
  @all
end


def self.print_laptop
  scrape_details.each_with_index do |model, price, index|
    puts "#{selected_number}.     #{model.text}    #{price.text}"
  end
end
end
