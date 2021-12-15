class Application < ApplicationRecord
  has_many :application_pets
  has_many :pets, through: :application_pets
  validates_presence_of :name, :street_address, :city, :state, :zip_code



  # def self.pending
  #    true
  # end
  # include AASM
  #
  # aasm do
  #   aasm_state :pending, :initial => true
  #   aasm_state :approved
  #   aasm_state :rejected
  #
  #   aasm_initial_state :pending
  #
  #   aasm_event :approve do
  #     transitions :to => :approved, :from => [:pending]
  #   end
  #
  #   aasm_event :reject do
  #     transitions :to => :rejected, :from => [:pending]
  #   end
  # end
end
