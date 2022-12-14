class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to user # redirect_to user_url(user)
      # Log the user in and redirect to the user's show page. 
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
