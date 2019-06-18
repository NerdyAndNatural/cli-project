
class LaptopHunt::CLI
  def run
    
    puts "Welcome to LaptopHunt!"
    
    puts "Which model would you like to view?"
    sleep(1)
     
    LaptopHunt::Scraper.new.scrape_laptop
       
    input = gets.strip.to_i

    selected_number = input

    loop do 
      if input.to_i > 0
          LaptopHunt::Laptop.print_laptop
          sleep(5)
          more
          break
      else 
        puts "Please enter a number from the list"
        input = gets.strip.to_i

      end
    end
  end


  def more
    puts "Would you like to see more laptops (Y/N)?"
    answer = gets.chomp

    loop do
      if answer.include?("Y") || answer.include?("y")
        run
        break
      elsif answer.include?("N") || answer.include?("n")
        puts "Thank you and have a nice day!"
        break
      else
        puts "Please select Y or N"
        answer = gets.chomp
      end
    end
  end
end




