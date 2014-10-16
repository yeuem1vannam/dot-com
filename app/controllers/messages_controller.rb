class MessagesController < ApplicationController
  respond_to :json

  def create
    @message = Message.new(message_params)
    @message.save
    respond_with(
      @message.as_json(only: [:name, :email, :message]),
      location: root_path,
      status: "Sent",
    )
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
