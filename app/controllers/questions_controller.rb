class QuestionsController < ApplicationController
  def ask
    @ask = params[:ask]
  end

  def answer
    @answer = params[:answer]
    @ask = params[:question]
    if @ask == 'I am going to work'
      @answer == 'Great'
    elsif @ask.end_with?('?')
      @answer == 'Silly question'
    else
      @answer == "I don't care, get dressed and go to work!"
    end
  end
end
