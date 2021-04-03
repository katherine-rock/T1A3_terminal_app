class ActionItem
    attr_accessor :id, :action, :category, :priority

    def initialize(action)
        # @id = ActionItem.length + 1
        @action = action
        @category = category
        @priority = priority
    end

end