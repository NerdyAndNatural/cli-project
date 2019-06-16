
class LaptopHunt::CLI

  

    def run
      LaptopHunt::Scraper.new.display_laptops
        puts "Welcome to LaptopHunt. Let's help you find a laptop!"
        sleep(2)
        search
    end

    def search

        puts "What is your price range?"
        sleep(1)
         
        min = gets.chomp.to_i
        max = gets.chomp.to_i
        
        end
    end
    
  def range_200 (laptop)
     puts "#{laptop.model}-----#{laptop.cost}"
    end

    
  #def self.selection
    #puts "Select from the list below to see more information"
    #details
    #end

def details
    puts 
    more
  end

  def more
    puts "Would you like to see more laptops (Y/N)?"
    answer = gets.chomp

    loop do
      if answer.include?("Y") || answer.include?("y")
        search
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

