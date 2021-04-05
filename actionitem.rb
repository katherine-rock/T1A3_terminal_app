class Action
    attr_accessor :id, :action, :category, :priority

    def initialize(action,category,priority)
        # @id = Action.length + 1
        @action = action
        @category = category
        @priority = priority
    end

    def to_s
        return "ID: #{@id} | Action Item: #{@action.capitalize} | Category: #{@category.capitalize} | Priority: #{@priority.capitalize} "
    end

end

