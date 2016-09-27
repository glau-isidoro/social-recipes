class FoodTypesController < ApplicationController

  def new
    @food_type = FoodType.new
  end

  def create
    @food_type = FoodType.create(params.require(:food_type).permit(:name))
    flash[:notice] = "Tipo de comida adicionada com sucesso!"
    redirect_to root_path
  end

end
