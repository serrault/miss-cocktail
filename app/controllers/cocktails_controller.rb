class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

#1/ @cocktail <- Cocktail.new
#2/ @cocktail.class -> "Cocktail"
#3/ @cocktail.class.downcase -> "cocktail"
#4/ @cocktail.class.downcase.pluralize -> "cocktails"
#5/ "cocktails" + "_path"

#1/ @cocktail.id <- POST
