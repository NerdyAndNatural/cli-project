Gem::Specification.new do |s|
  s.name        = 'LaptopHunt'
  s.version     =  0.1
  s.date        = '2019-06-15'
  s.summary     = "Help you search for a laptop"
  s.description = "Helps search for a laptop via the TigerDirect Website"
  s.authors     = ["Sarah Williams"]
  s.email       = 'srwilliams8678@gmail.com'
  s.files       = ["lib/LaptopHunt/Laptop.rb", "lib/LaptopHunt/LaptopHunt.rb", "lib/LaptopHunt/scraper.rb", "config/environment.rb"]
  s.homepage    = 'https://rubygems.org/gems/LaptopHunt'
  s.license     = 'MIT'
  s.executables << 'LaptopHunt'

  s.add_development_dependency "bundler", ">= 0"
  s.add_development_dependency "rake", ">= 0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "httparty", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end