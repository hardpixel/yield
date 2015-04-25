class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.integer :user_id
      t.integer :status_id
      t.date :start_date
      t.date :due_date
      t.float :est_hours
      t.float :log_hours
      t.integer :completed
      t.text :description

      t.timestamps null: false
    end
  end
end
