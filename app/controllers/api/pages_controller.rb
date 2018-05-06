class Api::PagesController < ApplicationController


  def random_fortunes_action
    fortunes = [
      "Something very bad is going to happen to you between noon and 5pm today.", 
      "Odd numbers are going to be particularly lucky for you today.", 
      "Tomorrow something will make you smile."
     ] 
    @fortune = fortunes.sample
    render 'fortune_view.json.jbuilder'
  end

  def number_generator_action
    @magic_numbers = []
    6.times { @magic_numbers << rand(1..60) } #times loop, same thing as writing 6.times do, but cleaner. always write code and make sure it works first, then clean it up.
    end

    render 'number_view.json.jbuilder'
  end
end
