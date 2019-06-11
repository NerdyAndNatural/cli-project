
require 'pry'


class Findalaptop

    def initialize
        @scraper - Scraper.new
    end

    def run
        puts "Thanks for using Find A Laptop"
        search
    end

    def search
        puts "What is your price range?"
        puts "A) $100-$500, B)$500-$1000 C)$1000-$2000"
        price = gets.option
        
        end
    end

    Findalaptop::CLI.new.run

