#responsible for communiticating between user and data

class CLI 

    def start
        puts "Welcome to the Seven Kingdoms, which region would thou like to visit?".colorize(:cyan)
        puts ""
        puts "Thy name is needed before entering traveler.".colorize(:cyan)
        API.get_data
        greeting(user_input)
        
    end 

    def user_input
        gets.strip
    end 

    def greeting(name)
        puts "Very well".colorize(:cyan) + " #{name}".colorize(:yellow)+", may I fancy thou information of the noble houses of the Seven Kingdoms?".colorize(:cyan)
        puts "If so, please input".colorize(:cyan) + " 'y'".colorize(:green) + " or ".colorize(:cyan) + "'n'".colorize(:red) + " to leave the Seven Kingdoms.".colorize(:cyan) 

        menu 
    end 

    def houses_list
        House.all.each.with_index(1) {|house, i| puts "#{i}. #{house.name}"}
        house_selection
    end 

    def bye 
        puts "Farewell friend, until next time.".colorize(:light_red)
    end 

    def invalid 
        puts "I beg your pardon?".colorize(:light_red)
        #menu #- can be added here as well 
    end 

    def house_selection 
        puts "------------------------------------"
        puts "Select a house for more information.".colorize(:cyan)
        puts "------------------------------------"


        selection = user_input
        house = House.find_house(selection)  
        if house 
            house_details(house)
        else
            invalid
            house_selection
        end 
        #query to find house details 
    end 

    # :name, :region, :seat, :allegiance, :sigil, :words

    def house_details(house)
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Name:".colorize(:cyan) + " #{house.name}"
        puts ""
        puts "Region:".colorize(:cyan) + " #{house.region[0]}" if house.region.join != ""
        puts ""
        puts "Seat:".colorize(:cyan) + " #{house.seat.join(", ")}" if house.seat.join != "" 
        puts ""
        puts "Allegiance:".colorize(:cyan) +  " #{house.allegiance.join(", ")}" if house.allegiance.join != ""
        puts ""
        puts "Sigil:".colorize(:cyan) + " #{house.sigil}" if house.sigil != ""
        puts ""
        puts "Words:".colorize(:cyan) + " #{house.words}" if house.words != ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

        puts "Would you like to pick another house? enter: y/n".colorize(:cyan)
        menu

    end 


    #show list, error, exit method 

    def menu
        selection = user_input

        if selection == 'y'
            houses_list
            #menu            #recursion 
        elsif selection == 'n'
            bye
        else 
            invalid
            menu
        end 
    end 

end 