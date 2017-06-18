class ReservationsController < ApplicationController

  def index

  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new

    @reservation.time                = params[:reservation][:time]
    @reservation.party_size             = params[:reservation][:party_size]


    if @reservation.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Reservation successfully created!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end


  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

end
