

require_relative "LaptopHunt.rb"


class Laptop::Scraper

    @@all = []

    attr_accessor :name, :model, :price

    def page
        doc = HTTParty.get("http://www.tigerdirect.com/applications/category/category_tlc.asp?CatId=17")
        @new ||= Nokogiri::HTML(doc)
      end

    def initialize

        @name = name
        @model = model
        @price = price
        @@all << self

    end

    def self.all
        @@all
      end

    def filter
        @filter ||= get_page.css("li[title='$25 to $49']").text
      end

    def model
        @title||= get_page.css(".itemName").text
    end

    def cost
       @price||= get_page.css(".salePrice").text
    end
 
end