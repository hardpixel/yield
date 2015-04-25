class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :text
      t.integer :parent_id
      t.integer :user_id
      t.integer :project_id
      t.integer :task_id
      t.integer :space_id

      t.timestamps null: false
    end
  end
end
