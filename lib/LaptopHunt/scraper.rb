

 class LaptopHunt::Scraper

  def self.scrape_laptop

    @main_page = Nokogiri::HTML(open("https://www.bestbuy.com/site/laptop-computers/all-laptops/pcmcat138500050001.c?id=pcmcat138500050001"))

    @scrape = @main_page.css("div.shop-sku-list-item")
   end

   def self.laptop_list
    @scrape.each do |item|
      title = item.css("h4.sku-header")[0..9].text
      laptop = LaptopHunt::Laptop.new(title)
      LaptopHunt::Laptop.all << laptop
    
   end

  end

end

