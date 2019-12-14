class NewNikes::Shoe
  attr_accessor :name, :price 
  
  @@all = []

  def self.all 
    @@all 
  end

  def initialize(name=nil, price=nil)
    @name = name 
    @price = price
    @@all << self  #self = shoe object that was just created
  end 

  
end  
