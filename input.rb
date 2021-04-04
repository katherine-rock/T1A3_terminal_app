require './actionitem.rb'

def input
    puts "What is the action? "
    action = gets.strip.downcase
    puts "What is the category? (optional) "
    category = gets.strip.downcase
    puts "What is the priority? (optional - low, medium or high) "
    priority = gets.strip.downcase
    item = Action.new(action,category,priority)
    puts "The following action has been added: "
    puts item
end