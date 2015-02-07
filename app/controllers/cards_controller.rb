class CardsController < ApplicationController
  before_action :load_user
  before_action :load_cards, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.is_admin?
    @allcards = Card.all
    else
      redirect_to user_path(current_user.id)
    end
  end

  def new
    @users = User.all
    @card = Card.new
  end

  def create
    @connectioncard = Card.new(card_params)
    
    if @connectioncard.save
      UserMailer.send_connection(@connectioncard.user_id, @connectioncard).deliver
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def update
    @changed = @cards.update(card_params)

    if @changed
      flash[:message] = "Updated Successfully"
      redirect_to user_path(@user.id)
    else
      flash[:message] = 'Update Failed!'
      redirect_to user_path(@user.id)
    end

  end

  def destroy
    @cards.destroy
    redirect_to user_path(@user)
  end

  private

  def load_user
    @user = User.find(params[:user_id])
  end

  def load_cards
    @cards = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:first_name, :last_name, :phone, :email, :address, :city, :state, :zipcode, :prayer, :notes, :called, :user_id) 
  end
end
