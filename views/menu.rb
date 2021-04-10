def menu
    pastel = Pastel.new
    puts "Choose from the following options: "
    puts "-" + pastel.bold("Show") + " all"
    puts "-" + pastel.bold("Choose") + " a category"
    puts "-" + pastel.bold("Add") + " a new action item"
    puts "-" + pastel.bold("Edit") + " an action item"
    puts "-" + pastel.bold("Delete") + " an action item"
    puts "-" + pastel.bold("Help")
    puts "-" + pastel.bold("Quit")
    puts
    puts "Enter your choice:".cyan
end