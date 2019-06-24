

 class LaptopHunt::Scraper

  def self.scrape_laptop
    @doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/laptop-computers/all-laptops/pcmcat138500050001.c?id=pcmcat138500050001"))
    @scrape = @doc.css("li.sku-item")
   end

  def self.laptop_list
   @scrape.each do |item|
      title = item.css("h4.sku-header").text.strip
      price = item.css("div.priceView-customer-price").text
      laptop = LaptopHunt::Laptop.new(title, price)
      LaptopHunt::Laptop.all << laptop
    end
   end

  end