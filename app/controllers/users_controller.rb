class UsersController < ApplicationController
before_filter :authenticate_user!  

def index
    @users = User.all
    #url = "/bookings/users/show"
    #redirect_to url
  end

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end

  def new
    @user = User.new

  end

  def edit
    @user = User.find(current_user)
   # @booking = Booking.new
    #@booking.user = current_user

    #@booking.save
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user, notice: 'Post was successfully created.' 
    else
      render action: "new" 
    end
  end

  def update
    @user = User.find(current_user)

	    if @user.update_attributes(params[:user])
       redirect_to @user, notice: 'Post was successfully updated.' 
    else
       render action: "edit" 
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url 
  end

end
