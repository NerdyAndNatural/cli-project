require 'httparty'
require 'nokogiri'

class Scraper

attr_accessor :product, :price, :model

 def get_page
    doc = HTTParty.get("https://www.bestbuy.com/site/searchpage.jsp?_dyncharset=UTF-8&browsedCategory=abcat0500000&id=pcat17071&iht=n&ks=960&list=y&qp=category_facet%3Dpcmcat138500050001%5Ecurrentoffers_facet%3DCurrent%20Deals~On%20Sale&sc=Global&st=categoryid%24abcat0500000&type=page&usc=All%20Categories")
    @product ||= Nokogiri::HTML(doc)
  end
    
    def model
        @title||= get_page.css(".sku-header").text

    end

    def cost
       @price||= get_page.css(".priceView-customer-price").text
    end

  
    scraper = Scraper.new
    laptop = scraper.model
    prices = scraper.cost

    (0...prices.size).each do |index|
      puts "Title: #{laptop} | Price: #{prices}"
    end

end  