class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :subject
      t.text :description
      t.string :member_ids
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
