require 'pry'

class NewNikes::Scraper 

  def self.scrape
    @doc = Nokogiri::HTML(open("https://www.nike.com/w/new-mens-shoes-3n82yznik1zy7ok?sort=newest", 'User-Agent' => 'firefox'))
    
  end
  
  def self.scrape_shoe
    @doc.each do |nike|
      name = nike.css("div.product-card__title").text.strip
      price = nike.css("div.product-card__price").text.strip
      shoe = self.new(name, price)
      @@all << shoe 
      binding.pry
    end 
  end 
  
  def self.display_shoe
    @@all.each.with_index(1) do |shoe, i|
      puts "   #{i}.   #{shoe.name}"
    end
  end
  
  def self.display_price(input)
    index = input.to_i - 1
    puts "#{@@all[index].price}"
  end
end 