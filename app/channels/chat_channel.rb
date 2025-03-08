class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:party_id]}"
  end
end
