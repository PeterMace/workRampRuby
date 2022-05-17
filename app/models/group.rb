class Group < ApplicationRecord
  has_many :group_automations
  has_and_belongs_to_many :users
end
