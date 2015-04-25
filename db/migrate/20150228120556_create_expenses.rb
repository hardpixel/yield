class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.text :description
      t.float :amount
      t.date :due_date
      t.boolean :recurring
      t.integer :rec_cycle
      t.integer :client_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
