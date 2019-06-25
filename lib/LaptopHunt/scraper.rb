

 class LaptopHunt::Scraper

  def self.scrape_pclaptop
    @doc = Nokogiri::HTML(open("https://www.bestbuy.com/site/all-laptops/pc-laptops/pcmcat247400050000.c?id=pcmcat247400050000"))
    @scrape = @doc.css("li.sku-item")
   end

  def self.laptop_list
   @scrape.each do |item|
      title = item.css("h4.sku-header").text.strip
      price = item.css("div.priceView-customer-price span.sr-only").text
      model = item.css("span.sku-title").text
      ratings = item.css("div.c-ratings-reviews.v-small p.sr-only").text
      laptop = LaptopHunt::Laptop.new(title, price, ratings)
      LaptopHunt::Laptop.all << laptop
    end
   end

   def self.scrape_apple
    @doc2 = Nokogiri::HTML(open("https://www.bestbuy.com/site/all-laptops/macbooks/pcmcat247400050001.c?id=pcmcat247400050001"))
    @apple = @doc2.css("li.sku-item")
   end

  def self.apple_list
   @apple.each do |item|
      title = item.css("h4.sku-header").text.strip
      price = item.css("div.priceView-customer-price span.sr-only").text
      ratings = item.css("div.c-ratings-reviews.v-small p.sr-only").text
      mac = LaptopHunt::Laptop.new(title, price, ratings)
      LaptopHunt::Laptop.all << mac
    end
   end


  end