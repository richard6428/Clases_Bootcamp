class VetsController < ApplicationController

  def index
    @vets=Vet.all
  end

  def new
    @vet= Vet.new
  end

  def edit  
    @vet= Vet.find(params[:id])
  end

  def create
    @vet= Vet.new(vet_params)
    @vet.save
    redirect_to vets_path
  end

  def destroy
    @vet= Vet.find(params[:id])
    @vet.destroy
    redirect_to vets_path
  end

  def update
    @vet= Vet.find(params[:id])
    @vet.update(vet_params)
    redirect_to vets_path
  end

  def vet_params
    params.require(:vet).permit(:name, :lastname, :turno)
  end

end