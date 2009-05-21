class MessagesController < ApplicationController
  def index
    @messages = Message.all    
  end  
  
  def create
    @message = Message.create(:author => params[:author], :message => params[:message])
    render :partial => 'message', :object => @message    
  end  
end
