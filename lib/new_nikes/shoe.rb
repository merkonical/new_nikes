class NewNikes::Shoe
  attr_accessor :name, :price 

  @@all = []
  
  def initialize(name=nil, price=nil)
    @name = name 
    @price = price
  end 
  
  def self.all 
    @@all 
  end
end 