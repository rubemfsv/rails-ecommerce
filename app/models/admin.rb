class Admin < ApplicationRecord
  enum role: [:full_access, :restricted_access]

  scope :with_full_access, -> { where(role: :full_access) }
  scope :with_restricted_access, -> { where(role: :restricted_access) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
