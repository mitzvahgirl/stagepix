require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, "app/views"
  end

# # index   
# get '/ viewers' do
#   @viewers = viewers.all
#   erb :'viewers/index'
# end

# # new
# get 'viewers/new' do
#  erb :'viewers/new'
# end  

# # create 
#    post '/viewers' do
#     viewer = Viewer.find_by_id(params[:viewer_id])
#     if @post.save
#       redirect '/viewers'
#     else
#       redirect '/viewers/new'
#  end
# end


# # show
# get "viewers/:id" do
#   @post = Post.find_by_id(params[:id])
#   if @post
#     erb :'viewers/show'
#   else
#     redirect 'viewers'
#   end
# end


# # edit
# get '/viewers/:id' do
#    @post = Post.find_by_id(params[:id])
#    erb :"viewers/edit"
# end

# # update
# get 'viewers/update' do
# end

# # patch "viewers/:id" do
# #   @post = Post.find_by_id([params[:id]
# #   @post.update(title: params[:title], body: params[:body])
# #   if @post.errors.empty?
# # redirect 'posts/#{@post.id}'
# #   else
# # redirect 'posts/new'
# #   end
# # end

# # delete
#   delete "/viewers/:id" do
#   Post.destroy(params[:id])
#   redirect "/viewers"
# end

end
