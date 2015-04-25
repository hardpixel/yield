class Contact < ActiveRecord::Base
	belongs_to :client

	has_one :user

	validates_presence_of :first_name, :last_name

	audited
end
