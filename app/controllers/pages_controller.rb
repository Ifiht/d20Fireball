class PagesController < ApplicationController
  def landing
    @layers = {
      background: "forest.png",
      base: "default_base.png",
      hair: "red_hair.png",
      armor: "leather_armor.png",
      accessories: "sword.png"
    }
  end
end
