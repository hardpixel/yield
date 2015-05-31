class User < ActiveRecord::Base
  has_many :tasks
  has_many :projects
  has_many :comments
  has_many :timelogs
  has_many :meetings
	has_many :spaces

	validates_presence_of :email

  audited

  # Include gravatars for users
  include Gravtastic
  gravtastic

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Enable user settings
  include RailsSettings::Extend

  # Get user name
  def name
    "#{first_name} #{last_name}"
  end

  # Open tasks
  def open_tasks
    statuses = Status.task.open.ids
    unless statuses.empty?
      User.find(id).tasks.where(status_id: statuses)
    else
      User.find(id).tasks
    end
  end

  # Closed tasks
  def closed_tasks
    statuses = Status.task.closed.ids
    User.find(id).tasks.where(status_id: statuses)
  end
end
