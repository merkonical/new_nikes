class NewNikes::CLI 
 
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
      when "show list of shoes"
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
end 