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
        puts "Very well #{name}, may I fancy thou information of the nine great houses of Westeros?"
    end 


    #show list, error, exit method 

    def menu 


    end 

end 