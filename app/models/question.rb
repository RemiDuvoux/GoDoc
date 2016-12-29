class Question < ApplicationRecord
  belongs_to :doctor, :class_name => "User"
  belongs_to :patient, :class_name => "User"
  belongs_to :category

  validates :content, presence: true
  validates :category_id, presence: true
  validates :patient_id, presence: true
end
