require 'Nokogirl'

class Scraper
    def initialize
        @main_url = "http://www.tigerdirect.com/applications/category/category_slc.asp?CatId=4935"
    end

    def info
        name = parse_page.css(".itemName"){ |name| name.text}.compact
        price = parse_page.css(".oldPrice"){ |price| price.text}.compact
        
    end
end   