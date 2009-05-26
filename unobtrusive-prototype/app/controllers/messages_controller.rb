class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params[:message])
    flash[:info] = "Your message has been posted, thanks!"

    respond_to do |format|
      format.html { redirect_to messages_path }
      format.js do
        response.headers["X-JSON"] = {
          :flash => flash[:info]
        }
        render @message
      end
    end
  end
end
