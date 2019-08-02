class Ad < ApplicationRecord
  belongs_to :member, optional: true
  belongs_to :category, optional: true
end
