class AddDoctorsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_doctor, :boolean
  end
end
