class Status < ActiveRecord::Base
	belongs_to :task
	belongs_to :invoice

	validates_presence_of :name, :scope, :type

	scope :task, -> { where(scope: :task) }
	scope :invoice, -> { where(scope: :invoice) }
	scope :open, -> { where.not(type: :open) }
	scope :closed, -> { where(type: :closed) }
	scope :draft, -> { where(type: :draft) }
end
