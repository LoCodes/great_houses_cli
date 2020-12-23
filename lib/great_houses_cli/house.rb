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

end 