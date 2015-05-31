class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :slug
      t.text :address
      t.string :email
      t.string :website
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :vat_number
      t.text :notes
      t.string :contact_ids

      t.timestamps null: false
    end
  end
end
