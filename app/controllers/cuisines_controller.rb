class CuisinesController < ApplicationController

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.create(params.require(:cuisine).permit(:name))
    flash[:notice] = "Cozinha adicionada com sucesso!"
    redirect_to root_path
  end

end
