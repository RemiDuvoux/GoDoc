class AddStatusToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :status, :string, :default => "pending"
  end
end
