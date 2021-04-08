require '../models/actionitem.rb'

#this is the original
def input
    puts
    puts "What is the action? "
    action = gets.strip.downcase
    puts "What is the category? (optional) "
    category = gets.strip.downcase
    puts "What is the priority? (optional - low, medium or high) "
    priority = gets.strip.downcase
    item = Action.new(action,category,priority)
    puts
    puts "The following action has been added: "
    puts item
    puts 
end

#this is the update
def input_action
    puts
    puts "What is the action? "
    gets.strip.downcase
    return 
end

def input_category
    puts "What is the category? (optional) "
    gets.strip.downcase
    return
end
    
def input_priority
    puts "What is the priority? (optional - low, medium or high) "
    gets.strip.downcase
    return 
end

def invalid_input_ID
    puts "That action item is not available. Please check the action item ID and try again."
end

