class Invoice < ActiveRecord::Base
  belongs_to :client
  belongs_to :project

  has_one :status

  validates_presence_of :title, :client_id

  audited
end
