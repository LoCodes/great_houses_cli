#responsible for communiticating between user and data

class CLI 

    def start
        puts "Welcome to the Seven Kingdoms, which region would thou like to visit?"
        puts "Thy name is needed before entering traveler" #i need your name before you enter, What is thy name traveler?
        API.get_data
        #binding.pry
        greeting(user_input)
        
    end 

    def user_input
        gets.strip
    end 

    def greeting(name)
        puts "Very well #{name}, may I fancy thou information of the nine great houses of the Seven Kingdoms?"
        puts "please input 'y' or 'n' to leave the Seven Kingdoms" 

        menu 
    end 

    def houses_list
        House.all.each.with_index(1) {|house, i| puts "#{i}. #{house.name}"}
        house_selection
    end 

    def bye 
        puts "Until next time."
    end 

    def invalid 
        puts "Invalid entry, try again."
        menu #- can be added here as well 
    end 

    def house_selection 
        puts "Select a house for more information."

        selection = user_input
        house = House.find_house(selection)   
        house_details(house)
        #query to find house details 
    end 

    # :name, :region, :seat, :allegiance, :sigil, :words

    def house_details(house)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Name: #{house.name}"
        puts "Region: #{house.region}"
        puts "Seat: #{house.seat}"
        puts "Allegiance: #{house.allegiance}"
        puts "Sigil: #{house.sigil}"
        puts "Words: #{house.words}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

        puts "Would you like to pick antoher house?"
        menu

    end 


    #show list, error, exit method 

    def menu
        selection = user_input

        if selection == 'y'
            houses_list
            menu            #recursion 
        elsif selection == 'n'
            bye
        else 
            invalid
        end 
    end 

end 