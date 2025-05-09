class CreateCharacterSprites < ActiveRecord::Migration[7.0]
  def change
    create_table :character_sprites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :background, null: false, default: 'background_blue'
      t.string :skin, null: false, default: 'skin_c3e1dc'
      t.string :hair, null: false, default: 'hair_bangs_1_black'
      t.string :armor, null: false, default: 'slim_shirt_black'
      t.string :weapon, null: false, default: 'weapon_warrior_5'
      t.timestamps
    end
  end
end
