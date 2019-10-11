class ViewersController < ApplicationController
get '/viewers/new' do 
 erb :'viewers/new'
end

 # create 
   post '/viewers' do
    @viewer = Viewer.new(params[:viewer_id], [:name], [:email], [:password])
    if @viewer.save
      redirect '/viewers'
    else
      redirect '/viewers/new'
 end
end    

    
     def destroy
         session[:user_id] = nil
         flash[:success] = “Successfully Logged Out!”
       redirect_to ‘/login’

      end

    end
