class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :authorize, only: [:edit, :show]


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
    
  end

  def show
    @cards = Card.where(user_id: @user)
    @allcards = Card.all
    render :show
  end

  def edit
    render :edit
  end

  def update
    @changed = @user.update(user_params)

    if @changed
      redirect_to user_path(@user.id)
    else
      render :edit
    end

  end

  def destroy
    @user.destroy
    redirect_to users_path(@user)
  end


  private

  def load_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :street_address, :city, :state, :zipcode, :password, :password_confirmation)
  end

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

  def authorize
    unless current_user == @user
      redirect_to root_path
    end
  end

end
