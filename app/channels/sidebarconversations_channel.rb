class SidebarconversationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "sidebarconversations_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
