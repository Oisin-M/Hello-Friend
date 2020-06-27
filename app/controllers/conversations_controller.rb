class ConversationsController < ApplicationController

def create
  @conversation = Conversation.new(conversation_params)
  @conversation.messages.first.account_id = current_account.id

  if @conversation.save!
    logger.debug "can save"
  else
    logger.debug "can't save"
  end

end

def update

end

private
def conversation_params
  params.require(:conversation).permit(:acc_id, :proj_id, messages_attributes: [:body, :account_id])
end

end
