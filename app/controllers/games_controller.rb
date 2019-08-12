class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.where(datetime: Date.today..Date.today + 14)
    fields = @games.map(&:field)
    if params[:address_query].present?
      respond_to do |format|
        fields = Field.near(params[:address_query], 50, order: 'distance')
        @games = @games.select { |game| fields.include? game.field }
        format.html { redirect_to games_path }
        format.js
      end
    end
    get_markers(@games)
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

  def get_markers(games)
    @markers = games.map do |game|
      {
        lng: game.field.longitude,
        lat: game.field.latitude
      }
    end
  end

end
