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
    if params['accept'].present? 
      params[:template] == "template"
      params['accept'].each do |email|
        Notification.invite_user_template(email).deliver
        flash[:notice] = "Mail Sent Successfully"
      end  
    elsif  params[:email].present?
      params[:email].each_line do |email|
        Notification.invite_user_template(email).deliver
        flash[:notice] = "Mail Sent Successfully"
      end
    else
      flash[:notice] = "plese give email to send mail"
    end
    redirect_to users_path
  end
end