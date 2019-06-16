
class LaptopHunt::CLI

  @@all = []

    attr_accessor :name, :model, :price

    def page
        doc = HTTParty.get("http://www.tigerdirect.com/applications/category/category_tlc.asp?CatId=17")
        @new ||= Nokogiri::HTML(doc)
      end

      def scraper
      end

    def initialize

        @name = name
        @model = model
        @price = price
        @@all << self

    end

    def self.all
        @@all
      end

    def filter
        @filter ||= get_page.css("li[title='$25 to $49']").text
      end

    def model
        @title||= get_page.css(".itemName").text
    end

    def cost
       @price||= get_page.css(".salePrice").text
    end

    scraper = Scraper.new
    display = scraper.filter

    def self.run
        puts "Welcome to LaptopHunt. Let's help you find a laptop!"
        sleep(2)
        search
    end

    def self.search

        puts "What is your price range?"
        sleep(1)
         
        puts"A) $200-$249.99 B) $250-$499.99 C) $500-$749.99 D) $750-$999.99"
        range = gets.chomp
        
        loop do
          if range.include?("A") || range.include?("a")
            puts "Here are $200-$249.99 laptops"
            sleep(1)
            display_laptops
             break
            elsif range.include?("B") || range.include?("b")
              puts "Here are $250-$499.99 laptops"
              sleep(1)
              selection
             break
            elsif range.include?("C") || range.include?("c")
              puts "Here are $500-$749.99 laptops"
              sleep(1)
              selection
             break
             elsif range.include?("D") || range.include?("d")
              puts "Here are $750-$999.99 laptops"
              sleep(1)
              selection
             break
            else
             puts "Please enter one of the options above"
              range = gets.chomp
          end
        end
    end
    
    def self.display_laptops
      puts "#{display}"
      
    end

    
  #def self.selection
    #puts "Select from the list below to see more information"
    #details
    #end

  #def self.details
    #puts "Laptop description and stuff"
    #more
  #end

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

LaptopHunt.run