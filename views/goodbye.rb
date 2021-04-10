def goodbye
    pastel = Pastel.new
    65.times { print "-" }
    puts
    puts pastel.bold("  Goodbye!")
    puts
    puts pastel.magenta("  Don't Panic") + " if you quit by accident. Your work has been saved."
    65.times { print "-" }
    puts
end