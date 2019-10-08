require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :index
  end

  post "/" do
    erb :index
  end
  

  get '/' do
    erb :new_viewers
  end

end
