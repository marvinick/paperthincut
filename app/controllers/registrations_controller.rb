class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password)
  end

  def account_update_params
    param.require(:user).permit(:username, :email, :password, :current_password)
  end

end