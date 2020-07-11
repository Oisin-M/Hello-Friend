class LikeChannel < ApplicationCable::Channel
  def subscribed
     stream_from "like_channel_#{params[:account_id]}" #params[:account_id]==current_account.id
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
