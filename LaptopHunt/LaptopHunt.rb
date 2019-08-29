
class LaptopHunt::CLI
  
  def run

    puts "Welcome to LaptopHunt!"
    sleep(3)
    puts "Let's help you find a laptop"
    sleep(3)
    selection
  end

    def selection
      puts "Would you like to view A)Apple or B)PC laptops?"
      answer = gets.strip.downcase
        
        loop do
          if answer == "a"
            puts "Loading Macbooks..."
            sleep(1)
             apple_list           
             break

            elsif answer == "b"
              puts "Loading laptop PC's..."
              laptop_list
              break

            else
              puts "please select A or B"
              answer = gets.chomp

      end
    end
  end

  def apple_list
    
    LaptopHunt::Scraper.scrape_apple
    LaptopHunt::Scraper.apple_list
    LaptopHunt::Apple.all[0, 10].each_with_index do |mac, index|
          puts "#{index+1}.  #{mac.title} "
    end

          puts "                               "
          puts "Which model would you like to view?"
          puts "Enter 1-10"

           input = gets.strip.to_i
           mac = LaptopHunt::Apple.find(input.to_i)

      loop do
       if input < 11          
           apple_details(mac)
           break
       else 
        puts "Please enter a number from 1-10"
        input = gets.strip.to_i
        
      end
    end
          
end
    

  def apple_details(mac) 
    puts "                               "
    puts " Macbook Details: #{mac.title}"
    puts "   #{mac.price}        "
    puts "   #{mac.ratings}                       " 
    puts "                               "

  sleep(5)
  more
end

    def laptop_list
      LaptopHunt::Scraper.scrape_pclaptop
      LaptopHunt::Scraper.laptop_list
    
      LaptopHunt::Laptop.all[0, 10].each_with_index do |laptop, index|
            puts "#{index+1}.  #{laptop.title} "             
            
      end
              puts "                               "
              puts "Which model would you like to view?"
              puts "Enter 1-10"
              input = gets.strip.to_i
              laptop = LaptopHunt::Laptop.find(input.to_i)
              
              loop do
                if input < 11        
                  display_details(laptop)
                    break
                else 
                 puts "Please enter a number from 1-10"
                 input = gets.strip.to_i
                
               end
             end
              
    end

    def display_details(laptop) 
      puts "                               "
      puts " Laptop Details: #{laptop.title}"
      puts "   #{laptop.price}        "
      puts "   #{laptop.ratings}                       " 
      puts "                               "

      sleep(3)
      more
    end

def more
  puts "What would you like to do now?"
  puts "Select A to start over or B to Exit"
  answer = gets.strip.downcase
  loop do
    if answer == "a"
      run
      break
    elsif answer == "b"
      puts "Have a nice day!"
      exit
    else puts "Please enter A or B"
      more
    end
  end


  end
end

