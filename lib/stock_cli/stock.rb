
class Stock

    attr_accessor :name, :price

    @@all = []
    
    def initialize(name, price)
     @name = name
     @price = price
     save
    end

    
    def save
    
        @@all << self
    
     end 


    def self.all
        @@all
    end 

end 





       
