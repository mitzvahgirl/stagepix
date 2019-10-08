class ViewersController < ApplicationController
    def new
    end
    
   def create
    viewer = Viewer.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation params[:password_confirmation]

        if viewer.save
            session[:viewer_id] = viewer_id
            flash[:success] = "Successfully Created Viewer Account"
        else
            flash[:warning] = "Invalid email or Password"
            redirect_to  '/signup'
        end
    end
    
    def destroy
        session[:user_id] = nil
        flash[:success] = “Successfully Logged Out!”
        redirect_to ‘/login’
       end
      end

end
