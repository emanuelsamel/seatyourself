class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.full_name             = params[:user][:full_name]
    @user.phone_number          = params[:user][:phone_number]
    @user.role                  = params[:user][:role]

    if @user.save

      if params[:user][:role] == 'Owner'
        redirect_to new_restaurant_url
      else

      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account successfully created!'
      redirect_to '/restaurants/view_index_customer'
    end
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def show
    @reservations = Reservation.where(user_id: session[:id])
  end

end
