
class LaptopHunt::Laptop

    @@all = []

    attr_accessor :name, :model, :price

    url = "http://www.tigerdirect.com/applications/category/category_slc.asp?CatId=4935"


    def initialize

        @name = name
        @model = model
        @price = price
        @@all << self

    end

    def self.all
        @@all
      end

    def rangeA
      @title||= get_page.css(".itemName").text
    end

    def model
        @title||= get_page.css(".itemName").text
    end

    def cost
       @price||= get_page.css(".salePrice").text
    end

    def doc
      @doc ||= HTTParty::HTML(open(self.url))
    end
 
end