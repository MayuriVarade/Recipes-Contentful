class RecipeController < ApplicationController
	include Fetchable

  def index
  @entries = get_all_recipes
  end

  def show
  	@entry = get_recipe(params[:id])
  end

end
