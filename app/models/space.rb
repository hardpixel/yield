class Space < ActiveRecord::Base
  has_many :users
  has_many :comments, dependent: :destroy

  validates_presence_of :name, :member_ids

  audited
end
