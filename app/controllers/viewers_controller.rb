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


#    def create
#     viewer = Viewer.new(
#         name: params[:name],
#         email: params[:email],
#         password: params[:password],
#         password_confirmation: params[:password_confirmation])

#         if viewer.save
#             session[:viewer_id] = viewer_id
#             flash[:success] = "Successfully Created Viewer Account"
#         else
#             flash[:warning] = "Invalid email or Password"
#             redirect_to  '/signup'
#         end
#     end
    
#     def destroy
#         session[:user_id] = nil
#         flash[:success] = “Successfully Logged Out!”
#         redirect_to ‘/login’

#       end

    end
