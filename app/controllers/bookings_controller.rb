class BookingsController < ApplicationController
  def index
  end
  def show
    @booking = current_user.bookings.where(state: 'paid').find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    @booking = Booking.create!(amount: @booking.game.price, state: 'pending', user: current_user)
    if @booking.save
      # redirect_to new_booking_payment_path(@booking)
    else
      render "games/show"
    end
  end




  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
  private

  def set_game
    @game = Game.find(params[:game_id])
  end
end
