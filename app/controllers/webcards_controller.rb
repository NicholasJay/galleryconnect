class WebcardsController < ApplicationController
  before_action :load_user, only: [:index, :show]
  before_action :load_webcard, only: [:show, :destroy]

  def index
    @allwebcards = Webcard.all
  end

  def new
    @card = Webcard.new
  end

  def create
    @webcard = Webcard.new(card_params)
    
    if @webcard.save
      redirect_to "http://www.gallerychurch.com/"
    else
      render :new
    end
  end

  def show
    @webcard = Card.new
    @users = User.all
  end

  def destroy
    @wcard.destroy
    redirect_to user_webcards_path(User.find(params[:id]))
  end

private

  def card_params
    params.require(:webcard).permit(:first_name, :last_name, :phone, :email, :address, :city, :state, :zipcode, :prayer, :notes, :called, :user_id) 
  end

  def load_webcard
    @wcard = Webcard.find(params[:id])
  end

  def load_user
    @user = User.find(params[:user_id])
  end

end
