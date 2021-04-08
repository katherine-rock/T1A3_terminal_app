require './help.rb'
require './input.rb'
require 'colorize'
require './actionitem.rb'

def self.display
    if  @itemlist != 0
    puts
    table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], @itemlist)

    puts table.render(:ascii)
    
    else
        puts "There are no current action items".yellow
    end
end

end

