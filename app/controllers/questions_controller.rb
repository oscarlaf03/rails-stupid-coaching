class QuestionsController < ApplicationController

  ANSWERS = {
    1 => "I don’t care, get dressed and go to work!",
    2 => "Silly question, get dressed and go to work!",
    3 => "Great!"
  }

  def reply
    if @question.downcase.strip == 'i am going to work'
      ANSWERS[3]
    elsif @question.downcase.include?('?')
      ANSWERS[2]
    else
      ANSWERS[1]
    end
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = reply
  end
end
