# respinsible for getting a call from api 
# getting the necessary data 
# creating a new RUBY objects with that data => Object Orientation 
# should always be class methods! dont need instance methods 

require 'pry'


class API 


    def self.get_data 
        response = RestClient.get('https://api.got.show/api/show/houses')
        houses_array = JSON.parse(response)
        houses_array.each do |house|
            House.new(house)
        end 
        # houses_array = House.new 
        # houses_array.name = house["id"]
        # houses_array.region = house["region"]
        # houses_array.seat = house["seat"]
        # houses_array.allegiance = house["allegiance"]
        # houses_array.sigil = house["sigil"]
        # houses_array.words = house["words"]
    end 

end 

    # :name, :region, :seat, :allegiance, :sigil, :words
