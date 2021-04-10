require_relative './actionitem.rb'
require_relative '../views/title.rb'
require_relative '../views/menu.rb'
require_relative '../views/errors.rb'
require_relative '../views/help.rb'

class ItemList 
    def initialize 
        @@todolist ||= begin
        YAML.load(File.read("todolist.yml"))
            rescue
                []
            end
        @@actions_created ||= begin
        YAML.load(File.read("actionscreated.yml"))
            rescue
                []
            end

    end

    def to_s
        return "ID: #{@id} | Action Item: #{@action.capitalize} | Category: #{@category.capitalize} | Priority: #{@priority.capitalize} "
    end

end