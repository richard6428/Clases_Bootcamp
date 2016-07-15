class PetsController < ApplicationController
  def index
  	@pets=Pet.all
  end

  def new
  	@pet=Pet.new
  end

  def edit
  	@pet=Pet.find(params[:id])
  end

  def create
  	@pet=Pet.new(pet_params)
  	@pet.save
  	redirect_to pets_path
  end

  def distroy
  	@pet=Pet.find(params[:id])
  	@pet.destroy
  	redirect_to pets_path
  end

  def update
  	@pet=Pet.find(params[:id])
  	@pet.update(pet_params)
  	redirect_to pets_path
  end

  def user_params
  	params.require(:pet).permit(:name, :type_of_pet, :age)
  end
end
