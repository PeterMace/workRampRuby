class Guide < ApplicationRecord
  has_many :guides_users
  has_many :users, through: :guides_users
end
