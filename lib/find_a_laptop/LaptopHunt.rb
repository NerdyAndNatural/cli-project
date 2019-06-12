
class LaptopHunt

    def initialize
        @scraper = Scraper.new
    end

    def self.run
        puts "Welcome to LaptopHunt. Let's help you find a laptop!"
        sleep(2)
        search
    end

    def self.search

        puts "What is your price range?"
        sleep(1)
         
        puts"A) $200-$249.99 B) $250-$499.99 C) $500-$749.99 D) $750-$999.99"
        price = gets.chomp
        
        loop do
          if price.include?("A") || price.include?("a")
            puts "Here are $200-$249.99 laptops"
            sleep(1)
             selection
             break
            elsif price.include?("B") || price.include?("b")
              puts "Here are $250-$499.99 laptops"
              sleep(1)
              selection
             break
            elsif price.include?("C") || price.include?("c")
              puts "Here are $500-$749.99 laptops"
              sleep(1)
              selection
             break
             elsif price.include?("D") || price.include?("d")
              puts "Here are $750-$999.99 laptops"
              sleep(1)
              selection
             break
            else
             puts "Please enter one of the options above"
              price = gets.chomp
          end
        end
    end

  def self.selection
    puts "Select from the list below to see more information"
    details
    end

  def self.details
    puts "Laptop description and stuff"
    more
  end

  def self.more
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
LaptopHunt.run