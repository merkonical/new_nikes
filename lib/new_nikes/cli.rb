class NewNikes::CLI 
 
  def call
    puts "Welcome to Nike Shoe store!"
    puts ""
    puts "Please select shoe from the list to view details:"
    NewNikes::Scraper.scrape_shoes
    menu 
  end 
  
  def menu 
    NewNikes::Scraper.all.each_with_index do |nike, index| 
      puts "#{index + 1}. #{nike.name}"
    end 
    
    puts "Please select a shoe by number to view it's information."
    
    input = gets.chomp 
    if input.to_i > NewNikes::Scraper.all.size 
      puts "That is an invalid number"
      menu 
    end 
    
    nike = NewNikes::Scraper.all[input.to_i - 1]
    puts "Here is the information for #{nike.name}:"
    puts nike.information

    menu 
    
  end 
end 