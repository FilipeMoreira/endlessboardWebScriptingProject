class SesssionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(u_email: params[:session][:email].downcase)
    if user && user.authenticate(u_password: params[:session][:password])
      log_in user
      redirect_to user
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end


end
