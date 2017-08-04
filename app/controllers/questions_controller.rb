class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end


  def new
    @question = Question.new
  end

  def edit
    render text: "Editing Question: #{params[:id]}"
  end
end

  private

  def question_attributes
    params.require(:question).permit([:body])
  end