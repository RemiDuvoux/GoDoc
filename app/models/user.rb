class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions
  belongs_to :category

  def show
    @user = current_user
  end

  def is_doctor?
    if self.is_doctor
      true
    else
      false
    end
  end
end
