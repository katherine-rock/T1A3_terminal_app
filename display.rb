    require './actionitem.rb'
    require './help.rb'
    
    def welcome
        puts "--- Things To Do ---"
    end

    def menu
        puts "Choose from the following options: "
        options = ["Show all","Choose a category", "Add new action item", "Edit action item", "Delete an action item", "Help", "Quit"]
        puts options
    end

    def input
        option = gets.strip.downcase
            case option 
            when /^s(how all)*/
            when /^a(dd)*/
                puts "What is the action? "
                action = gets.strip.downcase
                puts "What is the category? (optional) "
                category = gets.strip.downcase
                puts "What is the priority? (optional - low, medium or high) "
                priority = gets.strip.downcase
                ActionItem.new(action)
                puts "The following action has been added: "
                puts "Action: #{action}, Category: #{category}, Priority: #{priority}"
                puts
            when /^n(ew)*/
                # RecipesController::create
            when /^d(elete)*/
                # RecipesController::destroy param
            when /^h(elp)*/
                help
            when /^q(uit)*/
                exit
            end
    end


