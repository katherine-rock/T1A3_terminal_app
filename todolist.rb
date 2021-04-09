require_relative './views/title.rb'
require_relative './models/itemlist.rb'
require_relative './controllers/routes.rb'

ItemList.new
title
loop do 
    menu
    routes
end