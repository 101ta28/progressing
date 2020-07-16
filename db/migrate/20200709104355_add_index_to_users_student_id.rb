class AddIndexToUsersStudentId < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :student_id, unique: true
  end
end
