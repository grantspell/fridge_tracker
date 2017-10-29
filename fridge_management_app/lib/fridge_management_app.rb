require_relative '../config/environment'
require_relative '../app/models/fridge'
require_relative '../app/models/food'
require_relative '../app/models/drink'

def show_f
    fridges = Fridge.all
    fridges.each do |fridge|
        puts "Fridge: #{fridge.location} --> Brand: #{fridge.brand}"
    end
end

def create_f
    
end

def destroy_f
    puts "Select a fridge to delete:"
end

menu_prompt_i = %q(
Welcome to the Fridge Management App! What may I help you with?
1 => List Fridges
2 => Add New Fridge
3 => Delete A Fridge
)

puts menu_prompt_i

user_prompt_i = gets.chomp.to_i

if user_prompt_i == 1
    show_f
end

if user_prompt_i == 2
    create_f
end

if user_prompt_i == 3
    destroy_f
end