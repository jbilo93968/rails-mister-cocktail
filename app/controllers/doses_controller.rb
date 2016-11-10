class DosesController < ApplicationController
  before_action :load_cocktail, only: [:new, :create, :edit]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = @cocktail.doses.new(doses_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose.cocktail_id)
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

  def load_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end





