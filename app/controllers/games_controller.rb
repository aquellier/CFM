class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.where(:date => Date.today..Date.today + 14).order(:date).order(:time)
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
    define_location
    @game.creator = current_user
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

  def define_location
    if @game.metro_station == "Olaias"
      @game.location = "R. Olivença 1585, 1900-379 Lisboa"
    elsif @game.metro_station == "Praça de Espanha"
      @game.location = "Praça de Espanha, Lisboa"
    elsif @game.metro_station == "Anjos"
      @game.location = "Anjos, Lisboa"
    elsif @game.metro_station == "Campo Pequeno"
      @game.location = "Campo Pequeno,Lisboa"
    end
  end

end
