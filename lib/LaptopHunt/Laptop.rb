
class LaptopHunt::Laptop
  
  attr_accessor :title, :url

  @@all = []

def initialize(title=nil, url=nil)
   @title = title
   @url = url
   self
 end

 def self.all
  @@all
end

def self.find(id)
  @@all[id.to_i-1]
end
end

