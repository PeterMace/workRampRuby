class User < ApplicationRecord
  has_and_belongs_to_many :groups
  has_many :guides_users
  has_many :guides, through: :guides_users
end
