def help 
    pastel = Pastel.new
    puts "  --- "
    puts "Thank you for using the 'To Do' app".blue.on_white
    puts "Below is a list of options available in the app"
    puts
    # Show all
    puts "  Enter " + pastel.green("S") + " or " + pastel.green("show") + " to display a list of all current action items"
    # Add new
    puts "  Enter " + pastel.green("A") + " or " + pastel.green("add") + " to add a new action item, with the option to include a category and priority"
    # Edit
    puts "  Enter " + pastel.green("E") + " or " + pastel.green("edit") + " to update a previously entered action item"
    # Choose category
    puts "  Enter " + pastel.green("C") + " or " + pastel.green("choose") + " to display all items within a category of your choice"
    # Delete
    puts "  Enter " + pastel.green("D") + " or " + pastel.green("delete") + " to delete a previously entered action item"
    # Help
    puts "  Enter " + pastel.green("H") + " or " + pastel.green("help") + " to return to this help screen"
    # Quit
    puts "  Enter " + pastel.green("Q") + " or " + pastel.green("quit") + " to exit the program"
    puts 
    puts "For more detailed information about this app"
    puts TTY::Link.link_to("Please visit", "https://github.com/katherine-rock/T1A3_terminal_app".cyan.underline)
    puts "  ---"
end