class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :student_id
      t.string :name
      t.string :department

      t.timestamps
    end
  end
end
