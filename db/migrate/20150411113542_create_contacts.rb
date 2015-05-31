class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :phone
      t.string :mobile
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
