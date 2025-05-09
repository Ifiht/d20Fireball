class User < ApplicationRecord
  has_one :character_sprite, dependent: :destroy
  validates :username, presence: true, uniqueness: true
end
