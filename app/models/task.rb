class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  has_many :comments, dependent: :destroy
  has_one :status
  has_one :client, through: :project

  validates_presence_of :name, :project_id

  audited

  # Task status
  def status
  	Status.task.find(status_id) if status_id
  end
end
