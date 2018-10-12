class BookingsController < ApplicationController

  def index
  end
  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to games_path
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
