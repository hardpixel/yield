class CreateTimelogs < ActiveRecord::Migration
  def change
    create_table :timelogs do |t|
      t.float :time
      t.integer :user_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
