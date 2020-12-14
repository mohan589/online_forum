class Users::SessionsController < Devise::SessionsController
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end
end
