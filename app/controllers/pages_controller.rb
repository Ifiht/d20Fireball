class PagesController < ApplicationController
  def landing
    @layers = {
      background: "background_blue",
      skin: "skin_c3e1dc",
      hair: "hair_bangs_1_black",
      armor: "slim_shirt_black",
      weapon: "weapon_warrior_5"
    }
  end
end
