    require './help.rb'
    require './input.rb'
    
    def welcome
        puts "--- Things To Do ---"
    end

    def menu
        puts "Choose from the following options: "
        options = ["-Show all","-Choose a category", "-Add new action item", "-Edit action item", "-Delete an action item", "-Help", "-Quit"]
        puts options
    end

    def routes
        option = gets.strip.downcase
            case option 
            when /^s(how all)*/
            when /^a(dd)*/
                input
            when /^n(ew)*/
                # RecipesController::create
            when /^d(elete)*/
                # RecipesController::destroy param
            when /^h(elp)*/
                help
            when /^q(uit)*/
                exit
            else
                puts "Sorry, that response is not valid. Please try again."
            end
    end


