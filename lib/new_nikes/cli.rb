class NewNikes::CLI 
 
 def list_shoes
   NewNikes::Shoe.all.each.with_index(1) do |shoe, i|
     puts "   #{i}.   #{shoe.name}"
   end
 end
  
 def display_price(input)
   index = input.to_i - 1
   puts "#{NewNikes::Shoe.all[index].name}"
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
    puts "Welcome! This is the new Nike shoes for men section"
    puts "Please choose a number"
 end 
  
 def options
    input = "nil"
    puts "Please input number of shoe from the list for its price"
    puts "type list to see the shoes again"
    puts "or type exit"
    puts "-----------------------------------------"
    input = gets.strip.downcase
    if input.to_i > 0 && input.to_i <= NewNikes::Shoe.all.length  #input is a number 1 to last number of shoe displayed
      display_price(input)
      puts "Enter 'read more' or 'next' to proceed"
      more_options
      puts "would you like to look at another shoe? y/n"
      input = gets.strip.downcase
      if input == "y"
        options
      else input == "n"
        puts "Thank you! Come again."
      end
    elsif input == "list"
      list_shoes
      options
    elsif input == "exit"
      puts "Thank you! Come again."
    else                    #wrong input
      puts "invalid input, please choose another number"
      options
    end 
 end
 
 def more_options
    input = gets.strip.downcase
    if input == "read more"  
      puts "------------------------------------"
      puts "here we have a sample description"
      puts "------------------------------------"
    end 
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