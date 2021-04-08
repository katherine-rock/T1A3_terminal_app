require_relative '../views/input.rb'
require_relative '../models/itemlist.rb'

def routes
    option = gets.strip.downcase
        case option 
        when /^s(how all)*/
            puts ActionItem.display
        when /^a(dd)*/
            input
        when /^c(hoose)*/
            puts ActionItem.sub_array
        when /^d(elete)*/
            # pending
            unavailable
        when /^e(dit)*/
            # pending
            unavailable
        when /^t(est)*/
            test
            ActionItem.edit
        when /^h(elp)*/
            help
        when /^q(uit)*/
            puts "Goodbye!"
            exit
        else
            puts "Sorry, that response is not valid. Please try again.".red
            puts
        end
end