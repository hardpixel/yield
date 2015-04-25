class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :task
  belongs_to :space
  belongs_to :comment, foreign_key: :parent_id, dependent: :destroy

  has_many :comments

  validates_presence_of :title, :text, :user_id
end
