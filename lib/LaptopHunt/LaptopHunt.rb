
class LaptopHunt::CLI

  def call

   LaptopHunt::Scraper.scrape_laptop
    LaptopHunt::Scraper.laptop_list


    run
  end
 

  def run

    puts "Welcome to LaptopHunt!"
    
    puts "Which model would you like to view?"

    laptop_list
       
    input = gets.strip

    laptop = LaptopHunt::Laptop.find(input.to_i)
    
    display_details(laptop)

      end


    def laptop_list
      LaptopHunt::Laptop.all[0, 10].each_with_index do |laptop, index|
            puts "#{index+1}.  #{laptop.title} "
            
      end
    end

    def display_details(laptop) 
    puts "                               "
    puts " Laptop Details: #{laptop.title}"
    puts "   #{laptop.price}        "
    puts "                               "
    puts "   #{laptop.ratings}                       "   

  end
end


