    require './actionitem.rb'
    
    def welcome
        puts "Things To Do"
    end

    def menu
        puts "Choose from the following options: "
        options = ["Display all","Choose a category", "Add new action item", "Edit action item", "Delete an action item", "Help", "Quit"]
        puts options
    end

    def input
        option = gets.strip.downcase
            case option 
            when /^d(isplay all)*/
                # RecipesController::index
            when /^a(dd)*/
                puts "What is the action? "
                action = gets.strip.downcase
                puts "What is the category? (optional) "
                category = gets.strip.downcase
                puts "What is the priority? (optional - low, medium or high) "
                category = gets.strip.downcase
                ActionItem.new(action)

                # how to make parameters optional
            when /^n(ew)*/
                # RecipesController::create
            when /^d(elete)*/
                # RecipesController::destroy param
            end
    end

