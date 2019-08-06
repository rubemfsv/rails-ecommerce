class Ad < ApplicationRecord
  belongs_to :member, optional: true
  belongs_to :category, optional: true

  # paperclip
  has_attached_file :picture, styles: { medium: "320x150#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  scope :desc_order, ->(quantity = 10) { limit(quantity).order(created_at: :desc) }
  scope :for_member, -> (member) { where(member: member) }

  # gem money-rails
  monetize :price_cents
end
