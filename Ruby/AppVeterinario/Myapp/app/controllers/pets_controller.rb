class PetsController < ApplicationController
<<<<<<< HEAD

  def index
    @pets=Pet.all
  end

  def new
    @pet= Pet.new
  end

  def edit  
    @pet= Pet.find(params[:id])
  end

  def create
    @pet= Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def destroy
    @pet= Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  def update
    @pet= Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pets_path
  end

  def pet_params
    params.require(:pet).permit(:name, :type_of_pet, :age)
  end

=======
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
>>>>>>> 5bdca36ffd0b9475c0a8539ca041914f981ae0e6
end
