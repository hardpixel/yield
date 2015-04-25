class Timelog < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :task

  validates_presence_of :time, :user_id, :task_id
end
