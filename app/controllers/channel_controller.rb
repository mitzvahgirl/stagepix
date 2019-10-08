class ChannelController < ApplicationController
    def new
    end
    
   def create
    channel = Channel.new(
        name: params[:channel],
   end
   
end
