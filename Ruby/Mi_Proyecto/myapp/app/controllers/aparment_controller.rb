class AparmentController < ApplicationController
  def index
		@apartments=Aparment.all
	end

	def new
		@aparment=Aparment.new
	end

	def edit
		@aparment=Aparment.find(params[:id])
	end

	def create
		@aparment=Aparment.new(user_params)
		@aparment.save
		redirect_to users_path
	end

	def destroy
		@aparment=Aparment.find(params[:id])
		@aparment.destroy
		redirect_to users_path
	end

	def update
		@aparment=Aparment.find(params[:id])
		@aparment.update(user_params)
		redirect_to users_path
	end

	def user_params
		params.require(:aparment).permit(:num_floor,:elevator,:area,:num_baths,:balcony)
	end
end
