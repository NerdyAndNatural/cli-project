
class LaptopHunt::Laptop
  
  attr_accessor :title, :price

  @@all = []

def initialize(title, price)
   @title = title
   @price = price
   self

 end

 def self.all
  @@all
end

def self.find(id)
  self.all[id-1]
end
end

