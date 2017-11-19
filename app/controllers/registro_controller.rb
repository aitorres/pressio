class RegistroController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:usuario).permit(:username, :nombre, :apellido, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:usuario).permit(:username, :nombre, :apellido, :email, :password, :password_confirmation, :current_password)
  end
end