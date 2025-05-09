class CharacterSprite < ApplicationRecord
  belongs_to :user
  
  validates :background, presence: true
  validates :skin, presence: true
  validates :hair, presence: true
  validates :armor, presence: true
  validates :weapon, presence: true
end
