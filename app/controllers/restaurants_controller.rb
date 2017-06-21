class RestaurantsController < ApplicationController

  def index_customer
    @restaurants = Restaurant.all

  end
  def index_owner
    @restaurants = Restaurant.all
  end
  def index
    @restaurants = Restaurant.all
  end

  def create
      @restaurant = Restaurant.new(
        name:  params[:restaurant][:name],
        address: params[:restaurant][:address],
        neighbourhood: params[:restaurant][:neighbourhood],
        price_range: params[:restaurant][:price_range],
        summary: params[:restaurant][:summary],
        menu: params[:restaurant][:menu],
        max_capacity: params[:restaurant][:max_capacity],
        photo_url: params[:restaurant][:photo_url],
        user_id: session[:user_id]
      )

      if @restaurant.save

        redirect_to '/restaurants/view/index_owner'

      else
        flash.now[:alert] = @restaurant.errors.full_messages
        render :new
      end
    end

  def new
    @restaurant = Restaurant.new
  end

  def edit

  end

  def show
    @restaurant = Restaurant.find(params[:id])


  end

  def update

  end

  def destroy

  end
  # def restaurant_prams
  #   params.require(:restaurants).permit(name:,description:,user:
  # end
end
