    require './help.rb'
    require './input.rb'
    require 'colorize'
    
    def welcome
        puts
        puts "--- Things To Do ---".black.on_white
    end

    def menu
        puts "Choose from the following options: "
        options = ["-Show all","-Choose a category", "-Add new action item", "-Edit action item", "-Delete an action item", "-Help", "-Quit"]
        puts options
        puts "Enter your choice".cyan
    end

    def routes
        option = gets.strip.downcase
            case option 
            when /^s(how all)*/
                puts Action.display
            when /^a(dd)*/
                input
            when /^c(hoose)*/
                # pending
                unavailable
            when /^d(elete)*/
                # pending
                unavailable
            when /^e(dit)*/
                # pending
                unavailable
            when /^h(elp)*/
                help
            when /^q(uit)*/
                exit
            else
                puts "Sorry, that response is not valid. Please try again.".red
            end
    end

    def unavailable
        puts "Sorry, that function is not available yet. Please choose another option.".yellow
    end


