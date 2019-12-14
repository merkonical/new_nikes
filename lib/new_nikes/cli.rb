class NewNikes::CLI 
 
  def list_shoes
    NewNikes::Shoe.all.each.with_index(1) do |shoe, i|
      puts "   #{i}.   #{shoe.name}"
    end
  end
  
  def display_price(input)
    index = input.to_i - 1
    puts "#{NewNikes::Shoe.all[index].price}"
  end
  
 def call
  welcome
  puts"   "
  NewNikes::Scraper.scrape 
  NewNikes::Scraper.scrape_shoe
  list_shoes
  options 
 end
  
 def welcome
  puts "This is the new Nike shoes for men section"
 end 
  
 def options
  input = "nil"
  puts "Please input number of shoe for more info"
  puts "type list to see another shoe"
  puts "-----------------------------------------"
  input = gets.strip.downcase
    if input.to_i > 0 && input.to_i <= NewNikes::Shoe.all.length  #input is a number 1 to last number of shoe displayed
      display_price(input)
      puts "would you like to look at another shoe?"
      input = gets.strip.downcase
      if input == "y"
      options
      end
    elsif input == "list"
      list_shoes
      options
    else                    #wrong input
      puts "invalid input, please choose another number"
      options
    end 
    # case input
    #   when "name"
    #   puts "-------------------------"
    #   puts "   "
    #   list_shoes
    #   puts "-------------------------"
    #   options 
    #   puts "  "
    #   when "price"
    #   puts "showing nike price"
    #   puts "-------------------------"
    #   list_price
    #   options
    #   puts "-------------------------"
    # end    
  end
end 