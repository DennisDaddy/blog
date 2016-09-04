class MessagesController < ApplicationController
  def new
  	@visitor_message = Visitor.new(messages: [Message.new])
  end

  def create
  end
end
