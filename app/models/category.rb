class Category < ApplicationRecord
  validates :description, presence: true

  scope :order_by_description, -> { order(:description) }
end
