class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :doctor
      t.references :patient
      t.text :content
      t.timestamps
    end
  end
end
