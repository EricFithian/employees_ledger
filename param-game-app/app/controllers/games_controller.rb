class GamesController < ApplicationController
  def param_rules
    @name = params["name"].upcase
    render 'param_rules.html.erb'
  end

  def guessing
    @guess = params["guess"].to_i
    render 'guessing.html.erb'
  end

  def page_counter
    @counter = params['count'].to_i
    render 'page_counter.html.erb'
  end

  def url_segment_parameter_method
    render 'url_seg_param_'
  end

  def guessing_cleaner_version
    @guess = params["guess"].to_i

    if @guess == 28
      @message = "Hey you guessed it right!"
      elsif @guess > 28 && @guess < 101
      @message = "Your guess was too high!"
      elsif @guess < 28 && @guess >= 1
      @message = "Your guess was too low!" 
      else 
      @message = "Guess a NUMBER between 1 and 100 and don't try to break my game you jerk!"
    end

    render 'clean_guessing_game.html.erb'
  end

  def guessing_form
    @thing = '/form_guessing_game'
    render 'guessing_form.html.erb'
  end

  def guessing_answers
    @guess = params[":guess"].to_i
    if @guess == 28
      @message = "Hey you guessed it right!"
      elsif @guess > 28 && @guess < 101
      @message = "Your guess was too high!"
      elsif @guess < 28 && @guess >= 1
      @message = "Your guess was too low!" 
      else 
      @message = "Guess a NUMBER between 1 and 100 and don't try to break my game you jerk!"
    end
    render 'guessing_answers.html.erb'
  end
end
