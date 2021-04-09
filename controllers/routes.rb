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
            ActionItem.delete
        when /^e(dit)*/
            ActionItem.edit
        when /^t(est)*/
            test
        when /^h(elp)*/
            help
        when /^q(uit)*/
            puts "--------"
            puts "Goodbye!"
            puts "--------"
            exit
        else
            error_invalid
        end
end