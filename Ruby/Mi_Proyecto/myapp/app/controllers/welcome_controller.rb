class WelcomeController < ApplicationController
  def index
  	@welcome=Welcome.all
  end

  def new
  	@welcome=Welcome.new
  end

  def edit
  	@welcome=Welcome.find(params[:id])
  end

  def create
  	@welcome=Welcome.new(@welcome_params)
  	@welcome.save
  	redirect_to @welcome_path
  end

  def destroy
  	@welcome=Welcome.find(params[:id])
  	@welcome.destroy
  	redirect_to welcome_path
  end

  def update
  	@welcome=Welcome.find(params[:id])
  	@welcome.update(welcome_params)
  	redirect_to welcome_path
  end

  def welcome_params
  	params.require(:user).permit(:guest, :janitors, :towers, :aparment)
  end
end
