module Errors

    def Errors.error_invalid
        puts
        puts "Sorry, that response is not valid. Please try again.".red
        puts
    end

    def Errors.error_no_action_items
        puts
        puts "Sorry. There are no action items to choose from. Please try again.".yellow
        puts
    end

    def Errors.no_active_items
        puts
        puts "There are no current action items.".yellow 
        puts
    end

    def Errors.no_match_category
        puts
        puts "Sorry. There are no action items that match that category. Please try again.".yellow
        puts 
    end

    def Errors.id_not_found
        puts
        puts "Sorry. There are no action items that match that ID number. Please try again.".yellow
        puts
    end

    def Errors.major
        puts 
        puts "Oh dear! Something has gone wrong and the computer can't fix it. Please report this issue at https://github.com/katherine-rock/T1A3_terminal_app/issues"
    end

end