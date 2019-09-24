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
  
  def self.doc
    @doc = Nokogiri::HTML(open("https://www.nike.com/w/new-mens-shoes-3n82yznik1zy7ok?sort=newest", 'User-Agent' => 'firefox'))
  end

  def self.scrape_shoes
    @doc.each do |n| 
      name = n.css("div.product-card__title").text.strip
      price = n.css("div.product-card__price").text.strip
      shoe = self.new(name, price)
      @@all << shoe
    end
  end 
  
end 