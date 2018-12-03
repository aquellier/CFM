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
    @booking = Booking.new
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    @booking = Booking.create!(game: @game, amount: @booking.game.price, state: 'pending', user: current_user)
    redirect_to new_booking_payment_path(@booking)

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
  private

  def booking_params
    params.require(:booking).permit(:amount, :state, :user)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

end
