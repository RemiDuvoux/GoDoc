class AddCategoryToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :category, foreign_key: true
  end
end
