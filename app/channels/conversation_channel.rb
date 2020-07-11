class ConversationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conversation_channel_#{params[:swipe_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
