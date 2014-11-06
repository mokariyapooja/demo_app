class Users::RegistrationsController < Devise::RegistrationsController
  
  def new
    super
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path , :notice => "Please check your email and confirm your account first."
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation,:name)
  end
end
