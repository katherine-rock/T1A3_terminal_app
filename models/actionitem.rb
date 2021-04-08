require 'tty-table'
require 'colorize'

class ActionItem
    attr_accessor :id, :action, :category, :priority, :sub_array

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

    def self.display
        if  @@number_actions != 0
        puts
        table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], @@todolist)

        puts table.render(:ascii)
        
        else
            puts "There are no current action items".yellow
        end
    end

    def self.sub_array
        if  @@number_actions != 0
        puts "Please choose a category"
        target = gets.strip.downcase
        sub_array = @@todolist.select { |row| row.include?(target) }

        puts
        table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], sub_array)

        puts table.render(:ascii)

        else
            puts "Sorry. There are no action items to choose from.".yellow
        end
    end

end

