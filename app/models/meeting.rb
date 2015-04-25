class Meeting < ActiveRecord::Base
  has_many :users

  validates_presence_of :subject, :member_ids

  audited
end
