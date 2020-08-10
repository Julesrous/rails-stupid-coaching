class QuestionsController < ApplicationController

  def ask
  end

 def answer
  @answers = ["I am going to work!=", /\w+\?/]
  if params[:answer] == @answers[0]
    @answers_coach = "Great"
  elsif @answers[1].match(params[:answer])
    @answers_coach = "Silly question, get dressed and go to work!"
  else
    @answers_coach = "I don't care, get dressed and go to work!"

  end
 end

end
