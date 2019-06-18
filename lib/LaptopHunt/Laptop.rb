
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


def laptop
  model = page.css("span[data-testid='productseries']").text
  price = page.css("strong[data-testid='startingatprice']").text

end


def print_laptop
  all.each_with_index do |model, index|
    puts "#{selected_number}.     #{laptop.model}    #{laptop.price}"
  end
end
end
