require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    
# index   

get '/ posts' do
  @posts = posts.all
  erb : 'posts/index'
end

# new
get 'posts/new' do
 erb :'posts/new'
end  

# create 
   post '/posts' do
    viewer = viewer.find_by_id([params[:viewer_id])
    if @post.save
      redirect '/posts'
    else
      redirect '/posts/new'
 end


# show
get "posts/:id" do
  @post = Post.find_by_id(params[:id])
  if @post
    erb :'posts/show'
  else
    redirect 'posts'
  end
end


# edit
get '/posts/:id' do
   @post = Post.find_by_id([params[:id]
   erb: "posts/edit"
end

# update
get 'post/update'
 
end
patch "posts/:id" do
  @post = Post.find_by_id([params[:id]
  if @post.update(title: params[:title], body: params[:body])
redirect 'postss/#{@post.id}'
  else
redirect 'posts/new'
  end
end


# delete
@delete "/posts/:id" do
  Post.destroy(params[:id])
  redirect to "/posts"
end


end

end
