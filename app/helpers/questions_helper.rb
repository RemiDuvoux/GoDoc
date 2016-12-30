module QuestionsHelper
  def pending_questions(user)
    if user.is_doctor?
      return Question.where(category: user.category, status: "pending").count
    else
      return Question.where(patient: current_user, status: "answered").count
    end
  end
end
