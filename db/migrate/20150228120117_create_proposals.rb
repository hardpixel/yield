class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :description
      t.date :due_date

      t.timestamps null: false
    end
  end
end
