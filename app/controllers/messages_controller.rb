class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def new
  end
end
