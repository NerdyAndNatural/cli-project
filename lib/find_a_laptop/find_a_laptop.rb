

def findalaptop
    #def initialize
       # @setup = Laptop.new
        #@scraper - Scraper.new
    #end

    def research
        puts "Welcome! Let's help you find a laptop"
        puts "What is your price range?"
        puts "A) $100-$500, B)$500-$1000 C)$1000-$2000"
        price = gets.option
        
        loop do
            if price include?(A, B, C)
                puts "Here are your options"
            else
                puts "Please select A, B, or C"
            end
        end
    end


findalaptop 