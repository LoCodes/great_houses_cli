#responsible for communiticating between user and data

class CLI 

    def start
        puts "Welcome to the Seven Kingdoms, which region would thou like to visit?"
        puts "Thy name is needed before entering traveler" #i need your name before you enter, What is thy name traveler?
        greeting(user_input)
    end 

    def user_input
        gets.strip
    end 

    def greeting(name)
        puts "Very well #{name}, may I fancy thou information of the nine great houses of the Seven Kingdoms?"
        puts "please input 'y' or 'exit to leave the Seven Kingdoms"
        menu 
    end 

    def houses_list
        ["test1", "test2", "test3"].each.with_index(1) {|test, i| puts "#{i}. #{test}"}
    end 

    def bye 
        puts "Until next time."
    end 

    def invalid 
        puts "Invalid entry, try again."
        #menu - can be added here as well 
    end 

    def house_selection 
        puts "Select a house for more information."
    end 


    #show list, error, exit method 

    def menu 
        selection = user_input

        if selection == 'y'
            houses_list
            menu            #recursion 
        elsif selection == 'exit'
            bye
        else 
            invalid
            menu
        end 

    end 

end 