class SessionsController < ApplicationController

  def new
    end

    def create
      u = User.find_by(email: params[:session][:email])

      if u && u.authenticate(params[:session][:password])

        # Send a cookie to user's browser
        session[:user_id] = u.id

        flash[:notice] = 'Successfully logged in!'
        @current_user=User.find(session[:user_id])
        if @current_user.role == 'Owner'
          redirect_to '/restaurants/view/index_owner'
        else
          redirect_to '/restaurants/view/index_customer'
        end
      else
        flash.now[:alert] = 'Try again!'
        render :new
      end

    end

    def destroy
      # Clear the session cookie
      session[:user_id] = nil

      flash[:notice] = "You're logged out!"
      redirect_to root_url
    end
  end
