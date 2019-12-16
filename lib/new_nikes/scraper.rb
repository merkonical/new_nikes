class NewNikes::Scraper 


 
  def self.scrape
    @doc = Nokogiri::HTML(open("https://www.nike.com/w/new-mens-shoes-3n82yznik1zy7ok?sort=newest", 'User-Agent' => 'firefox'))
  end
  
  def self.scrape_shoe
    @doc.css("div.product-card__body").each do |nike|
      name = nike.css("div.product-card__title").text.strip
      price = nike.css("div.product-card__price").text.strip
      url = nike.css("a")[0]["href"]
      shoes = NewNikes::Shoe.new(name, price, url)
    end
  end 
  
  def self.scrape_description(shoe)
    
    @doc = Nokogiri::HTML(open(shoe.url, 'User-Agent' => 'firefox'))
    shoe.description = @doc.css("div.description-preview.body-baseline-base.css-1pbvugb").text
  end 
   #@doc.css("div.description-preview.body-baseline-base.css-1pbvugb")
end 