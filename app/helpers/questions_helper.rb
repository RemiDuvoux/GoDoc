module QuestionsHelper
  def pending_questions(user)
    if user.is_doctor?
      return Question.where(category: user.category, status: "pending").count
    end
  end
end
