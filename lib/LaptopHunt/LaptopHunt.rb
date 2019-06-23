
class LaptopHunt::CLI

  def run

    puts "Welcome to LaptopHunt!"
    
    puts "Which model would you like to view?"

    list_laptop
       
    #input = gets.strip.to_i

    #display_details

      end
    end

    def list_laptop
      LaptopHunt::Scraper.scrape_laptop
      LaptopHunt::Scraper.laptop_list
      LaptopHunt::Laptop.all.each_with_index do |laptop, index|
            puts "#{index+1}.      #{laptop.title}"
      end
    end




