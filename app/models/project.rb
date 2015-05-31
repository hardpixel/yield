class Project < ActiveRecord::Base
  belongs_to :project
  belongs_to :client

  has_many :projects, foreign_key: :parent_id, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates_presence_of :name

  serialize :member_ids, Array

  audited

  extend FriendlyId
  friendly_id :name, use: :slugged

  scoped_search on: [:title]

  before_save :clean_member_ids

  def clean_member_ids
    member_ids.reject! { |m| m.blank? }
    member_ids.map! { |m| m.to_i }
  end

  # Get parent
  def parent
    Project.find(parent_id) if parent_id
  end

  # Get client
  def client
    Client.find(client_id) if client_id
  end

  # Get members
  def members
    User.find(member_ids) if member_ids
  end

  # Open tasks
  def open_tasks
    statuses = Status.task.open.ids
    unless statuses.empty?
      Project.find(id).tasks.where(status_id: statuses)
    else
      Project.find(id).tasks
    end
  end

  # Closed tasks
  def closed_tasks
    statuses = Status.task.closed.ids
    Project.find(id).tasks.where(status_id: statuses)
  end
end
