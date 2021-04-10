def input
    puts
    puts "What is the action?"
    action = gets.strip.downcase
    puts "What is the category?"
    category = gets.strip.downcase
    puts "What is the priority?"
    priority = gets.strip.downcase
    item = ActionItem.new(action,category,priority)
    puts
    puts "The following action has been added:"
    puts item
    puts 
end