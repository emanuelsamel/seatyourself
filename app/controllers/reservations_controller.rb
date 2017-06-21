class ReservationsController < ApplicationController

  def index

  end

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new

    @reservation.time                = params[:reservation][:time]
    @reservation.party_size          = params[:reservation][:party_size]
    @reservation.restaurant_id      = params[:restaurant_id]
    @reservation.user_id            = params[:reservation][:user_id]

    if @reservation.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Reservation successfully created!'
      redirect_to '/user/user_reservation'
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, Please fill in the required fields!'
      render :new
    end
  end


  def edit

  end

  def show
   @reservation = Reservation.find(params[:id])
   end

  def update

  end

  def destroy

  end

end
