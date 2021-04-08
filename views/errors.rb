def error_unavailable
    puts
    puts "Sorry, that function is not available yet. Please choose another option.".yellow
    puts
end

def error_invalid
    puts
    puts "Sorry, that response is not valid. Please try again.".red
    puts
end

def error_no_action_items
    puts
    puts "Sorry. There are no action items to choose from. Please try again.".yellow
    puts
end

def test
    3.times {print "Testing... "}
    puts 
end