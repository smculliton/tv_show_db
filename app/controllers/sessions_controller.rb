class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to "/users/#{user.id}"
    else
      flash[:error] = 'Unrecognized username/password combination. Try again'
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'You have been logged out.'
    redirect_to '/'
  end
end