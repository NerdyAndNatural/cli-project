class LaptopHunt::Apple
  
    attr_accessor :title, :price, :ratings, :shipping
  
    @@all = []
  
  def initialize(title, price, ratings)
     @title = title
     @price = price
     @ratings = ratings
     @shipping = shipping
     self
  
   end
  
   def self.all
    @@all
  end
  
  def self.find(id)
    self.all[id-1]
  end
  end
  
  