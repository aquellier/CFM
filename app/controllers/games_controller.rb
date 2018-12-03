class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.where(:date => Date.today..Date.today + 14)
    @markers = @games.map do |game|
      {
        lng: game.longitude,
        lat: game.latitude
      }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
        lat: @game.latitude,
        lng: @game.longitude#,
        # infoWindow: { content: render_to_string(partial: "/games/map_box", locals: { flat: flat }) }
    }]
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def my_games
    @bookings = current_user.bookings.each do |booking|
      booking.game
    end
  end

  private

  def game_params
    params.require(:game).permit(:date, :time, :metro_station, :location, :number_of_players, )
  end

  def set_game
    @game = Game.find(params[:id])
  end

  # def define_address
  #   if @game.metro_station == "Olais"
  #     @game.
  #   elsif game.metro_station == "Praça de"
  #   elsif game.metro_station == "Olais"
  #   elsif game.metro_station == "Olais"
  #   end
  # end

end
