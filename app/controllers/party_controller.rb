class PartyController < ApplicationController
  before_action :authenticate_user!

  def create
    @party = Party.new
    @party.users << current_user
    if @party.save
      redirect_to @party, notice: 'Party created!'
    else
      render :new
    end
  end

  def show
    @party = Party.find(params[:id])
  end
end
