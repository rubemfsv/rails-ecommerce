class Ad < ApplicationRecord
  belongs_to :member, optional: true
  belongs_to :category, optional: true

  # gem money-rails
  monetize :price_cents
end
