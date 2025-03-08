class ChatController < ApplicationController
  def send_message
    @message = current_user.messages.create(party_id: params[:party_id], content: params[:content])
    ActionCable.server.broadcast "chat_#{params[:party_id]}", message: @message.content, user: current_user.email
  end
end
