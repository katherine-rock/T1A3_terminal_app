require 'tty-table'
require 'colorize'
require 'yaml'

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
            puts
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
            puts
            puts "Sorry. There are no action items to choose from.".yellow
        end
    end

    def self.edit
        if  @@number_actions != 0
        puts "Please enter the ID of the action item you want to edit:"
        targetID = gets.strip.downcase.to_i
        sub_array = @@todolist.select { |row| row.include?(targetID) }

            if sub_array.empty? == false
                puts "Please enter the updated action item:"
                update_action = gets.strip
                puts "Please enter the updated category:"
                update_category = gets.strip
                puts "Please enter the updated priority:"
                update_priority = gets.strip
                    sub_array.replace([targetID,update_action,update_category,update_priority])
                    @@todolist.delete_at(targetID-1)
                    @@todolist.insert(targetID-1, sub_array) 
                puts "Here is your updated action item:"
                puts "ID: #{targetID} | Action Item: #{update_action} | Category: #{update_category} | Priority: #{update_priority}"
                puts
            else
                puts "Sorry. There are no action items that match that ID number.".yellow
            end

        else
            error_no_action_items
        end
    end

    def self.delete
        if  @@number_actions != 0
            puts "Please enter the ID of the action item you want to delete:"
            targetID = gets.strip.to_i
            sub_array = @@todolist.select { |row| row.include?(targetID) }
    
                if sub_array.empty? == false
                    @@todolist.delete_at(targetID-1)
                    puts "The action item has been deleted."
                    puts 
                else
                    puts "Sorry. There are no action items with that ID. Please try again.".yellow
                    puts
                end

            else
                error_no_action_items 
            end
    end

def self.load
    @@todolist = YAML.load(File.read("todolist.yml"))
end

def self.save
    File.open("todolist.yml", 'w') { |file| file.write(@@todolist.to_yaml) }
end

end

