require 'nokogiri'
require 'pry'

class Scraper

    def open
        Nokogiri::HTML(open("http://www.tigerdirect.com/applications/category/category_slc.asp?CatId=4935"))    
    end

    def info
        laptop = parse_page.css(".itemName"){ |laptop| name.text}.compact
        price = parse_page.css(".oldPrice"){ |price| price.text}.compact

    end

    scraper = Scraper.new
 
    def display
        puts "Laptop: #{laptop[index]}, Price: #{price[index]}"
    end
end   

