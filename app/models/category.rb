class Category < ApplicationRecord

  # Gem Friendly Id
  extend FriendlyId
  friendly_id :description, use: :slugged

  # Associations
  has_many :ads

  # Validations
  validates :description, presence: true

  # Scopes
  scope :order_by_description, -> { order(:description) }

end
