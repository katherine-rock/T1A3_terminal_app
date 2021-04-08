require './help.rb'
require './input.rb'
require 'colorize'
require './actionitem.rb'


def edit
    puts "What is the ID number of the action item you would like to edit?"
    item_edit = gets.strip.to_i
    if item_edit == @id
        # need to find out how to retrieve the relevant item
        puts "What is the updated action item? Leave blank if no updates are required."
        @action = gets.chomp.downcase
        #need to upddate it only if the text changes - if blank leave the instance variable alone
        puts "What is the updated category? Leave blank if no updates are required."
        @category = gets.chomp.downcase
        #need to upddate it only if the text changes - if blank leave the instance variable alone
        puts "What is the updated priority? Leave blank if no updates are required."
        @priority = gets.chomp.downcase
        #need to upddate it only if the text changes - if blank leave the instance variable alone
    else
        puts "An action item with that ID cannot be found"
    end

end

