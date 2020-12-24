class House

    attr_accessor :name, :region, :seat, :allegiance, :sigil, :words


    @@all = []

    def initialize(name, region, seat, allegiance, sigil, words)  #mass assign later
        @name = name 
        @region = region 
        @seat = seat
        @allegiance = allegiance
        @sigil = sigil 
        @words = words
        save
    end 

    def save       #saves my instance and shoves it in my array
        @@all << self 
    end 

    def self.all   
        @@all
    end 


    #create a method that accepts the house name and finds the object with that name 

    def self.find_house(house_name)
        self.all.find {|house| house.name == house_name}
    end 

end 