class DiceController < ApplicationController
    def dice_static
        @dice_array = []

        6.times do 
            roll = rand(4) + 1
            @dice_array.push(roll)
        end

        render({ :template => "dice_rolls/dice_results.html.erb" })
    end

    def dice_flex
        @number_of_dice = params.fetch(:count).to_i
        @number_of_sides = params.fetch(:dice).to_i

        @dice_array = []

        @number_of_dice.times do 
            roll = rand(@number_of_sides) + 1
            @dice_array.push(roll)
        end

        render({ :template => "dice_rolls/dice_results.html.erb" })
    end
end