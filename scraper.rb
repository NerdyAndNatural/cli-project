require 'httparty'
require 'nokogiri'

class Scraper

attr_accessor :product, :price, :model

 def get_page
    doc = HTTParty.get("http://www.tigerdirect.com/applications/category/category_tlc.asp?CatId=17")
    @product ||= Nokogiri::HTML(doc)
  end
    
    def model
        @title||= get_page.css(".itemName").text

    end

    def cost
       @price||= get_page.css(".salePrice").text
    end

  
    scraper = Scraper.new
    laptop = scraper.model
    prices = scraper.cost

    (0...prices.size).each do |index|
      puts "Title: #{laptop} | Price: #{prices}"
    end

end  