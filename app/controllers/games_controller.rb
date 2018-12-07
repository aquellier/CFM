class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.where(:datetime => Date.today..Date.today + 14).order(:datetime)
    @markers = @games.map do |game|
      {
        lng: game.field.longitude,
        lat: game.field.latitude
      }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
        lat: @game.field.latitude,
        lng: @game.field.longitude#,
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
    params.require(:game).permit(:datetime, :field, :location, :number_of_players, :price)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def define_location
    if @game.field.location == "UrbanSoccer - Porte d'Aubervilliers, Avenue Victor Hugo, Aubervilliers, France"
      @game.field = "Porte d'Aubervilliers"
    elsif @game.field.location == "Praça de Espanha"
      @game.field = "Praça de Espanha, Lisboa"
    elsif @game.field == "Anjos"
      @game.field.location = "Anjos, Lisboa"
    elsif @game.field.location == "Campo Pequeno"
      @game.field = "Campo Pequeno,Lisboa"
    end
  end

end
