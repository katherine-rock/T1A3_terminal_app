require_relative './actionitem.rb'
require_relative '../views/title.rb'
require_relative '../views/menu.rb'
require_relative '../views/errors.rb'
require_relative '../views/help.rb'

class ItemList
    def initialize 
        @action_items = []
    end

    def add_action(action,category,priority)
        actionitem = ActionItem.new(action,category,priority)
        @action_items << actionitem
    end

    def self.get_actions
        puts @action_items
    end

    def to_s
        return "ID: #{@id} | Action Item: #{@action.capitalize} | Category: #{@category.capitalize} | Priority: #{@priority.capitalize} "
    end

    # input validation also belongs in model

end