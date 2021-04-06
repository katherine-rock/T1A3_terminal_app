require 'tty-table'

class Action
    attr_accessor :id, :action, :category, :priority

    @@number_actions = 0
    @@todolist = []

# MB would not be happy with @@

    def initialize(action,category,priority)
        @action = action
        @category = category
        @priority = priority
        @@number_actions += 1
        @id = @@number_actions
        @@todolist.push([@id, @action, @category, @priority])
    end

    def to_s
        return "ID: #{@id} | Action Item: #{@action.capitalize} | Category: #{@category.capitalize} | Priority: #{@priority.capitalize} "
    end

    def self.display
        puts
        table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], @@todolist)

        puts table.render(:ascii)
    end
    # I need to initialise class variables for action, category and priority

end

