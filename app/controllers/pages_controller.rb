class PagesController < ApplicationController
  def landing
    # Set default values
    @current_shirt = params[:shirt].presence || "slim_shirt_black"
    @current_weapon = params[:weapon].presence || "weapon_warrior_5"
    @current_background = params[:background].presence || "background_blue"

    # Debug log to check values
    Rails.logger.debug "Current shirt: #{@current_shirt}"
    Rails.logger.debug "Current weapon: #{@current_weapon}"
        
    @layers = {
      background: @current_background,
      skin: "skin_c3e1dc",
      hair: "hair_bangs_1_black",
      armor: @current_shirt,
      weapon: @current_weapon
    }

    # Validate that no layer has an empty value
    @layers.each do |layer, value|
      Rails.logger.debug "Layer #{layer}: #{value}"
      raise "Empty value for layer #{layer}" if value.blank?
    end

    @available_shirts = AVAILABLE_SHIRTS
    @available_weapons = AVAILABLE_WEAPONS
    @available_backgrounds = AVAILABLE_BACKGROUNDS
  end
end
