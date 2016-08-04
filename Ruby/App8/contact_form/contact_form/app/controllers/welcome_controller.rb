class WelcomeController < ApplicationController

  def index
  end

  def contact
  	ContactMailer.new_message(params[:name], params[:email], params[:subject], params[:message]).deliver_now 	
  	ContactMailer.thanks(params[:email], params[:name]).deliver_now
  	redirect_to root_path, notice: "Mensaje enviado"
  end

end
