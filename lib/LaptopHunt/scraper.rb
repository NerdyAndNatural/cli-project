

require 'httparty'
require 'nokogiri'

class Scraper

attr_accessor :product, :price, :model

 def get_page
    doc = HTTParty.get("http://www.tigerdirect.com/applications/category/category_tlc.asp?CatId=17")
    @product ||= Nokogiri::HTML(doc)
  end
    
    def model
        @title||= get_page.css(".itemName").css("h3").map {|name| name.text}.compact

    end

    def cost
       @price||= get_page.css(".oldPrice").css("span").map {|price| price.text}.compact

    end

  
    scraper = Scraper.new
    laptop = scraper.model
    prices = scraper.cost

    (0...prices.size).each do |index|
      puts "------- index: #{index + 1} -------"
      puts "Title: #{laptop} | Price: #{prices}"
    end

end  
