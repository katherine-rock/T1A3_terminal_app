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

    def get_actions
        return @action_items
    end

    # models video 11:00
    def sort_category(category)
        @action_items.each do |item|
            if item.category == category
                return actionitem
            end
        end
        return nil
    end

    # input validation also belongs in model

end