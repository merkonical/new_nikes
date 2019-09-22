class CLI 
  def run 
    puts "Welcome to Nike Shoe store!"
    puts ""
    puts "Please select shoe from the list to view details:"
    Scraper.scrape_shoes
    menu 
  end 
  
  def menu 
    Nikes.all.each_with_index do |nike, index| 
      puts "#{index + 1}. #{nike.name}"
    end 
    
    puts "Please select a shoe by number to view it's information"
    
    input = gets.chomp 
    if input.to_i > Nikes.all.size 
      puts "That is an invalid number"
      menu 
    end 
    
  end 
end 