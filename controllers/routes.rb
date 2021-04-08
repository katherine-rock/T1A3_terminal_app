def routes
    option = gets.strip.downcase
        case option 
        when /^s(how all)*/
            puts ActionItem.display
        when /^a(dd)*/
            input
        when /^c(hoose)*/
            # pending
            unavailable
        when /^d(elete)*/
            # pending
            unavailable
        when /^e(dit)*/
            # pending
            unavailable
        when /^t(est)*/
            test
        when /^h(elp)*/
            help
        when /^q(uit)*/
            exit
        else
            puts "Sorry, that response is not valid. Please try again.".red
        end
end