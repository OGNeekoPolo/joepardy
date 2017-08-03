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
end
