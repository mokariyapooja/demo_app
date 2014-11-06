class UsersController < ApplicationController

  before_action :authenticate_user! 

  def index
    @title = "All users of our site"
    @users = User.all
    @contacts = request.env['omnicontacts.contacts']
  end

  def show
    @user = User.friendly.find(params[:id])  
  end 

  def send_invitation
    if params[:email].present?
      params[:template] == "template"
      Notification.invite_user_template(params[:email]).deliver
      flash[:notice] = "Mail Sent Successfully To All"
      redirect_to users_path
    else
      render 'invite'
    end
  end
end