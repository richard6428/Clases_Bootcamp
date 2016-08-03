class WelcomeController < ApplicationController
  def index
  end

  def contact
  	ContactMailer.new_message(params[:name], params[:lastname], params[:email], params[:date], params[:sex], params[:language], params[:experience]).deliver_now
  	redirect_to root_path, notice: "Formulario Enviado"
  end
end
