class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end
end
