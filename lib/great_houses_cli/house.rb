class House

    attr_accessor :name, :region, :coat_of_arms, :current_lord, :founded


    @@all = []

    def initialize(name, region, coat_of_arms, current_lord, founded)  #mass assign later
        @name = name 
        @region = region 
        @coat_of_arms = coat_of_arms
        @current_lord = current_lord  #url
        @founded = founded 
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