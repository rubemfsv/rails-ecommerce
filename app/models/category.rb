class Category < ApplicationRecord

  has_many :ads

  validates :description, presence: true

  scope :order_by_description, -> { order(:description) }
end
