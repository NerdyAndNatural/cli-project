
class LaptopHunt::CLI

  def call

   LaptopHunt::Scraper.scrape_laptop
    LaptopHunt::Scraper.laptop_list


    run
  end
 

  def run

    puts "Welcome to LaptopHunt!"

    puts "Would you like to view A)Tablets or B)Laptops?"

        answer = gets.chomp
        
        loop do
          if answer.include?("A") || answer.include?("a")
            puts "Loading tablets lists..."
            sleep(1)
             desktop_list
             break
            elsif answer.include?("B") || answer.include?("b")
              puts "Loading laptop lists..."
              sleep(1)
              laptop_list
              puts "Which model would you like to view?"
              input = gets.strip
              laptop = LaptopHunt::Laptop.find(input.to_i)
    
              display_details(laptop)
              break
            else 
    
              puts "please select A or B"
              answer = gets.chomp
    puts "Which model would you like to view?"
      
    input = gets.strip

    

      end
    end
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

  def tablet_list
    LaptopHunt::Laptop.all[0, 10].each_with_index do |tablet, index|
          puts "#{index+1}.  #{tablet.title} "
          
    end
  end

  def tablet_details(tablet) 
  puts "                               "
  puts " Tablet Details: #{tablet.title}"
  puts "   #{tablet.price}        "
  puts "                               "
  puts "   #{tablet.ratings}                       "   

end
end


