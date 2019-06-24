

 class LaptopHunt::Scraper

  def self.scrape_laptop
    @doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/laptop-computers/all-laptops/pcmcat138500050001.c?id=pcmcat138500050001"))
    @scrape = @doc.css("li.sku-item")
   end

  def self.laptop_list
   @scrape.each do |item|
      title = item.css("h4.sku-header").text.strip
      price = item.css("div.priceView-customer-price").text
      ratings = item.css("div.c-ratings-reviews.v-small p.sr-only").text
      laptop = LaptopHunt::Laptop.new(title, price, ratings)
      LaptopHunt::Laptop.all << laptop
    end
   end

  end