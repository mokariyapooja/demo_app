class SessionController < ApplicationController
  skip_before_action :authenticate_user!
   
  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    user.skip_confirmation!
    sign_in user
    redirect_to users_path
  end
end
