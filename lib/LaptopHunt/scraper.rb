require 'nokogiri'
require 'open-uri'

class LaptopHunt::Scraper

  def scrape_laptop
  
    page = Nokogiri::HTML(open("https://www.dell.com/en-us/shop/scc/sc/laptops"))

    page.css("span[data-testid='productseries']").each_with_index do |model, index|
      puts "#{index + 1}. #{model.text} "
    end
  end
end