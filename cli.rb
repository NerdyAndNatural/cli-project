def randomwords

  puts "Hi there. Want some fruit?"
  answer = gets.chomp  #Will prompt to ask if you want fruit

  fruit = ["apples", "oranges", "bananas", "grapes", "kiwis", "papayas", "pineapples", "honeydews", "cantalopes", "grapefruits", "lemons", "limes", "dragonfruit"]

loop do
  if answer == ("yes") #Will randomly pick fruit and output response
    fruitbasket = fruit.sample
    puts "Here are some #{fruitbasket}."
      break
  elsif answer == ("no") #Will put out response below
    puts "Come back soon!"
      break
  else 
  puts "Let's try again. Want some fruit?" #Will loop response and prompt for answer until response yes or no is received
    answer = gets.chomp
    end
  end 
end

randomwords