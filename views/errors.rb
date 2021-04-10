module Errors

    def Errors.error_invalid
        puts
        puts "Sorry, that response is not valid. Please try again.".red
        puts
    end

    def Errors.error_no_action_items
        puts
        puts "Sorry. There are no current action items. Please try again.".yellow
        puts
    end

    def Errors.no_category
        puts
        puts "Sorry. There are no action items that match that category.".yellow
        puts
    end

    def Errors.id_not_found
        puts
        puts "There is no action item with that ID number. Please try again.".yellow
        puts
    end
end