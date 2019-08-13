class FieldsController < ApplicationController
  def new
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      redirect_to new_game_path
    else
      render 'new'
    end
  end

  private

  def field_params
    params.require(:field).permit(:name, :location)
  end
end
