class NewNikes::Shoe
  attr_accessor :name, :price, :url 
  
  @@all = []

  def self.all 
    @@all 
  end

  def initialize(name=nil, price=nil, url=nil)
    @name = name 
    @price = price
    @url = url
    @@all << self  #self = shoe object that was just created
  end 

  
end  
