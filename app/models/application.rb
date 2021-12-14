class Application < ApplicationRecord
  has_many :application_pets
  validates_presence_of :name, :street_address, :city, :state, :zip_code
  scope :find_name, ->(search) { where("name ILIKE :search", search: "%#{search}%") }

  def self.search(params = {})
    return find_name(params[:search]) if params[:search].present?
  end
end
