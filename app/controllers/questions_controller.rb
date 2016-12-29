class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create

    @question = Question.new(question_params)
    category = Category.find_by(name: params[:question][:category])
    patient = User.find(current_user)
    @question.category = category
    @question.patient = patient
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end

end
