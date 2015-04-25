class User < ActiveRecord::Base
  has_many :tasks
  has_many :projects
  has_many :comments
  has_many :timelogs
  has_many :meetings
	has_many :spaces

  has_attached_file :avatar, :styles => { :medium => '300x300>', :thumb => '100x100>' }

  validates_attachment :avatar, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'] }
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

  # Get full name
  def full_name
    "#{first_name} #{last_name}"
  end
end
