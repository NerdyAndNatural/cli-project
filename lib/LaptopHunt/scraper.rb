require 'nokogiri'
require 'open-uri'

class LaptopHunt::Scraper

  def scrape_laptop
    url = "https://www.bestbuy.com/site/laptop-computers/all-laptops/pcmcat138500050001.c?id=pcmcat138500050001"

    main_page = Nokogiri::HTML(open(url))

    laptop_list = main_page.css("h4.sku-header")[0..9]

    laptop_list.each_with_index do |model, index|
      puts "#{index + 1}. #{model.text} "
    end
  end

  def scrape_details
    laptop_url = "https://www.bestbuy.com/"
    
    detail_page = Nokogiri::HTML(open(laptop_url))

    model = detail_page.css("span[data-testid='productseries']")
    price = detail_page.css("strong[data-testid='startingatprice']")

  end
end
