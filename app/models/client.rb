class Client < ActiveRecord::Base
  has_many :projects
  has_many :invoices
  has_many :expenses
  has_many :contacts
  has_many :tasks, through: :projects

  validates_presence_of :name

  audited

  extend FriendlyId
  friendly_id :name, use: :slugged

  # Include gravatars for clients
  include Gravtastic
  gravtastic :email

  # Get website url
  def website_url
    unless website[/\Ahttp:\/\//] || website[/\Ahttps:\/\//]
      "http://#{website}"
    end
  end

  # Get mail to
  def mail_to
    "mailto:#{email}"
  end

  # Get google maps url
  def google_maps_url
    "http://maps.google.com/?q=#{address}"
  end
end
