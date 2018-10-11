class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
    @game = Game.new(game_params)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def game_params
    params.permit(:date, :time, :location, :number_of_players)
  end

  def set_game
    @game = Game.find(params[:id])
  end


end
