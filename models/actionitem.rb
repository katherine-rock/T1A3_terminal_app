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

            if sub_array.empty? == false
        puts
        table = TTY::Table.new(["  ID  ","  Action Item  ","  Category  ","  Priority  "], sub_array)
        puts "Here are all the action items from the #{target} category: "
        puts table.render(:ascii)

            else
                puts "Sorry. There are no action items that match that category.".yellow
            end

        else
            puts "Sorry. There are no action items to choose from.".yellow
        end
    end

    # def self.edit
    #     if  @@number_actions != 0
    #     puts "Please enter the ID of the action item you want to edit:"
    #     target = gets.strip.to_i
    #     @@todolist.index(target)
        
    #     else
    #         puts "Sorry. There are no action items to choose from.".yellow
    #     end
    # end

    #Original version of self.edit. Bits of it work. 
    def self.edit
        if  @@number_actions != 0
        puts "Please enter the ID of the action item you want to edit:"
        targetID = gets.strip.downcase.to_i
        sub_array = @@todolist.select { |row| row.include?(targetID) }

            if sub_array.empty? == false
                puts "Array is not empty" 
                puts "Please enter the updated action item:"
                update_action = gets.strip
                puts "Please enter the updated category:"
                update_category = gets.strip
                puts "Please enter the updated priority:"
                update_priority = gets.strip
                    p sub_array
                    sub_array.replace([targetID,update_action,update_category,update_priority])
                    p sub_array
                    @@todolist.delete_at(targetID-1)
                    @@todolist << sub_array

            else
                puts "Sorry. There are no action items that match that ID number.".yellow
            end

        else
            puts "Sorry. There are no action items to choose from.".yellow
        end
    end


end

