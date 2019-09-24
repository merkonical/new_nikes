class NewNikes::CLI 
 
 def list_shoes
    NewNikes::Scraper.scrape 
    NewNikes::Scraper.scrape_shoe
    NewNikes::Scraper.display_shoe
  end
  
  def list_price(input)
    NewNikes::Scraper.scrape
    NewNikes::Scraper.scrape_shoe
    NewNikes::Scraper.display_price(input)
  end
  
  def call
    welcome
    puts"   "
    options 
    
  end
  
  def welcome
    puts "This is the new Nike shoes for men section"
  def options
    input = "nil"
    puts "Please enter your input below this line with name or price"
    puts "-----------------------------------------"
      puts "   "
      input = gets.strip.downcase
      case input
      when "name"
        puts "-------------------------"
        puts "   "
        list_shoes
        puts "-------------------------"
          options 
          puts "  "
      when "price"
        puts "showing nike price"
        puts "-------------------------"
          list_price(input)
        options
        puts "-------------------------"
      
      end 
    end 
  end
end 