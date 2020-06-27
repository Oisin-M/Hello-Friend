class ConversationsController < ApplicationController

  def create
    @conversation = Conversation.new(conversation_params)
  end
