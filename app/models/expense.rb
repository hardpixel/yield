class Expense < ActiveRecord::Base
  belongs_to :client
  belongs_to :project

  validates_presence_of :title, :amount

  audited
end
