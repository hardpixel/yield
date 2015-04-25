class Status < ActiveRecord::Base
	belongs_to :task
	belongs_to :invoice

	validates_presence_of :name, :model, :type

	scope :task, -> { where(model: :task) }
	scope :invoice, -> { where(model: :invoice) }
	scope :open, -> { where.not(type: :open) }
	scope :closed, -> { where(type: :closed) }
	scope :draft, -> { where(type: :draft) }
end
