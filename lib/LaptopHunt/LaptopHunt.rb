
class LaptopHunt::CLI

  def call
    run
  end
 

  def run

    puts "Welcome to LaptopHunt!"

    puts "Would you like to view A)Apple or B)PC laptops?"

        answer = gets.chomp
        
        loop do
          if answer.include?("A") || answer.include?("a")
            puts "Loading Macbooks..."
            sleep(1)
             apple_list
             puts "Which model would you like to view?"
              input = gets.strip
              mac = LaptopHunt::Laptop.find(input.to_i)
              apple_details(mac) 
             break
            elsif answer.include?("B") || answer.include?("b")
              puts "Loading laptop PC's lists..."
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
      LaptopHunt::Scraper.scrape_pclaptop
   
    LaptopHunt::Scraper.laptop_list
    
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

  def apple_list
    LaptopHunt::Scraper.scrape_apple
    LaptopHunt::Scraper.apple_list
    LaptopHunt::Laptop.all[0, 10].each_with_index do |mac, index|
          puts "#{index+1}.  #{mac.title} "
          
    end
  end

  def apple_details(mac) 
  puts "                               "
  puts " Tablet Details: #{mac.title}"
  puts "   #{mac.price}        "
  puts "                               "
  puts "   #{mac.ratings}                       "   

end
end


