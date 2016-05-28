class BookingsController < ApplicationController

before_filter :authenticate_user!

  def index
    @booking = Booking.all
  end

  def new
   @car_id = params[:car_id]
  end
  
  def create
    #render text: params[:booking].inspect
    @booking = Booking.new(params[:booking])
    
    if @booking.save
      redirect_to @booking
    else
     flash[:notice] = "You are annoying me. Go away."
     redirect_to :action => :new, :car_id =>@booking.car_id
    end
  end
  
  def edit
    #@user = User.find(params[:id])
    #@booking = Booking.new
    #@booking.user = current_user
    #@booking.save
  end
  
  def show
    url = "/bookings/bookings"
    redirect_to url
  end
  
end
