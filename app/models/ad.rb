class Ad < ApplicationRecord
  belongs_to :member, optional: true
  belongs_to :category, optional: true

  # paperclip
  has_attached_file :picture, styles: { medium: "320x150#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  scope :last_six, -> { limit(6).order(created_at: :desc) }

  # gem money-rails
  monetize :price_cents
end
