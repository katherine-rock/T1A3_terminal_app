require 'tty-table'
require 'colorize'

class ActionItem
    attr_accessor :id, :action, :category, :priority

    @@number_actions = 0
    @@todolist = []

    def initialize(action,category,priority)
        @action = action
        @category = category
        @priority = priority
        @@number_actions += 1
        @id = @@number_actions
        @@todolist << ([@id,@action,@category,@priority])
    end

    def to_s
        return "ID: #{@id} | Action Item: #{@action.capitalize} | Category: #{@category.capitalize} | Priority: #{@priority.capitalize} "
    end

    # This works. Has also been copied to 
    def self.display
        if  @@number_actions != 0
        puts
        table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], @@todolist)

        puts table.render(:ascii)
        
        else
            puts "There are no current action items".yellow
        end
    end

    # def self.find
    #     puts "What ID are you looking for?"
    #     item_found = gets.strip
    #     @@todolist.index { |element| element == item_found }
    #     puts "This is the item you are about to update: "
    #     "ID: #{@id} | Action Item: #{@action} | Category: #{@category} | Priority: #{@priority} "
    #     end
    # end

    # this is Michael's code: 
    # def self.find(id)
    #     return unless id 
    #     all.detect { |resource| resource.id == id.to_i }
    # end

end

