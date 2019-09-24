class NewNikes::Scraper 
  attr_accessor :name, :price  
  
  @@all = []
  
  def initialize(name=nil, price=nil)
    @name = name 
    @price = price 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.scrape_nike
    @doc = Nokogiri::HTML(open("https://www.nike.com/w/new-mens-shoes-3n82yznik1zy7ok?sort=newest", 'User-Agent' => 'firefox'))

    shoe = self.new
    shoe.name = doc.css("div.product-card__title").text.strip
    shoe.price = doc.css("div.product-card__price").text.strip
    
    shoe
  end
  
  def self.today
    self.scrape_shoes
  end

  def self.scrape_shoes
    shoes = []

    shoes << self.scrape_nike
    
    shoes
  end

  
end 