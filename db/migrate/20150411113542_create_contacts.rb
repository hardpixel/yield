class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address
      t.string :phone
      t.string :mobile

      t.timestamps null: false
    end
  end
end
