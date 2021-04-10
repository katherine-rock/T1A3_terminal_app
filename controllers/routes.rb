require_relative '../views/input.rb'
require_relative '../models/itemlist.rb'
require_relative '../views/goodbye.rb'

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
            # test
            3.times {puts "--Testing--   "}
            ActionItem.test
        when /^h(elp)*/
            help
        when /^q(uit)*/
            ActionItem.save
            goodbye
            exit
        else
            Errors.error_invalid
        end
end