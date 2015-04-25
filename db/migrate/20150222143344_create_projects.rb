class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :parent_id
      t.integer :client_id
      t.date :start_date
      t.date :due_date
      t.text :description
      t.string :member_ids

      t.timestamps null: false
    end
  end
end
