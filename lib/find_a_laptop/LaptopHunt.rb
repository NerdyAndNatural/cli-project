
require 'pry'


class LaptopHunt

    def initialize
        @scraper = Scraper.new
    end

    def self.run
        puts "Thanks for using LaptopHunt. Let's help you find a laptop"
        search
    end

    def self.search

        puts "What is your price range?"
        puts "A) $100-$500, B)$500-$1000 C)$1000-$2000"
        price = gets.chomp
        
        loop do
          if price.include?("A") || price.include?("a")
            puts "Here are $100-$500 laptops"
             selection
             break
            elsif price.include?("B") || price.include?("b")
            puts "Here are $500-$1000 laptops"
            selection
             break
            elsif price.include?("C") || price.include?("c")
            puts "Here are $1000-$2000 laptops"
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