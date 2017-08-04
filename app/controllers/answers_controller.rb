class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def show
    @answer = Answer.find(params[:answer_id])
  end

  def edit
    if != admin?
      flash[:danger] = "Sorry, you're not an admin."
      redirect_to @user
    else
      @answer = Answer.find(params[:answer_id])
  end

  def create
    @answer = Answer.create(answer_params)

    if @answer.save
      redirect_to @quiz.question
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:first_option, :second_option, :third_option, :correct_answer)
  end
end
