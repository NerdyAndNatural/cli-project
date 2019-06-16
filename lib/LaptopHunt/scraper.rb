class LaptopHunt::Scraper

  min = gets.chomp.to_i
  max = gets.chomp.to_i
 
  html = Nokogiri::HTML(open("http://www.tigerdirect.com/applications/category/category_slc.asp?Lprice=#{min}&Hprice=#{max}&CatId=17"))


    html.css('.itemName .salePrice').each do |div|
     LaptopHunt::Laptop.new_from_index_page(div)
   end
  end

