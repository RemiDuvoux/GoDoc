class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def index
    if current_user.is_doctor?
      @questions = Question.where(category: current_user.category, status: "pending")
    else
      @questions = Question.where(patient: current_user)
      @questions.select {|question| question.status == "answered"}.each do |question|
        question.status = "read"
        question.save
      end
      @questions = Question.where(patient: current_user)
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    category = Category.find(params[:question][:category_id])
    patient = User.find(current_user)
    @question.category = category
    @question.patient = patient
    if @question.save
      flash[:notice] = "Question successfully created. We'll update you as soon as a doctor has answered it."
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def answer
    @question = Question.find(params[:question_id])
  end

  def answer_patch
    question = Question.find(params[:question_id])
    question.answer = params[:question][:answer]
    question.doctor = current_user
    question.status = "answered"
    if question.save
      redirect_to question_path(question)
    else
      render :answer
    end
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end

end
