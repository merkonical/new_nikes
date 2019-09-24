class NewNikes::CLI 
 
 def list_product
    NewNikes::Scraper.scrape 
    NewNikes::Scraper.scrape_shoe
    NewNikes::Scraper.display_shoe
  end
  
  def list_series(input)
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
  def options
    input = "nil"
    puts "Please enter your input below this line"
    puts "-----------------------------------------"
      puts "   "
      input = gets.strip.downcase
      case input
      when "show list"
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