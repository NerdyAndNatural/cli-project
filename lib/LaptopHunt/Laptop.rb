
class LaptopHunt::Laptop
  
  attr_accessor :title, :price, :ratings

  @all = []


def initialize(title, price, ratings)
   @title = title
   @price = price
   @ratings = ratings
  

 end

def self.all
  @all
end

def self.find(id)
  self.all[id-1]
end

end

class LaptopHunt::Apple < LaptopHunt::Laptop
  @all = []
end
