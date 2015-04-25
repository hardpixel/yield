class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :model
      t.string :type

      t.timestamps null: false
    end
  end
end
