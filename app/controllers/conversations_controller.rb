class ConversationsController < ApplicationController

def create

end

def update

end

private
def conversation_params
  params.require(:conversation).permit(acc_id, proj_id, messages_attributes: [:body, :account_id, :project_id])
end

end
