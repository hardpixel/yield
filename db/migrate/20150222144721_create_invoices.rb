class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :title
      t.date :due_date
      t.integer :number
      t.text :description
      t.integer :client_id
      t.integer :project_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
