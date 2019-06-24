
class LaptopHunt::CLI

  def call

   LaptopHunt::Scraper.scrape_laptop
    LaptopHunt::Scraper.laptop_list


    run
  end
 

  def run

    puts "Welcome to LaptopHunt!"
    
    puts "Which model would you like to view?"

    list
       
    input = gets.strip

    #selected_laptop = LaptopHunt::Laptop.find(input.to_i)

    #puts "Specs for #{selected_laptop.title}:"

    laptop = LaptopHunt::Laptop.find(input.to_i)
    
    display_details(laptop)

      end


    def list
      LaptopHunt::Laptop.all[0, 10].each_with_index do |laptop, index|
            puts "#{index+1}.  #{laptop.title} "
            
      end
    end

    def display_details(laptop) 
      puts "                               "
    puts " Laptop Details:"
    puts "   #{laptop.price}        "
    puts "                               "
    puts "                               "   

  end
end


