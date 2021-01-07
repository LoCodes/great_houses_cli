# respinsible for getting a call from api 
# getting the necessary data 
# creating a new RUBY objects with that data => Object Orientation 
# should always be class methods! dont need instance methods 



class API 


    def self.get_data 
        response = RestClient.get('https://api.got.show/api/show/houses')
        houses_array = JSON.parse(response)
        houses_array.each do |house|
            House.new(house)
            #binding.pry
        end 
    end 

end 

