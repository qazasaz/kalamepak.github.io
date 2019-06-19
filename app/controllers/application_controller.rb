class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:student_name, :guardian_name, :username,:date_of_birth, :is_female, :phone, :skype_id, :country, :state, :city,  :morning, :day, :evning, :email, :password, :password_confirmation, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:student_name, :guardian_name, :username, :date_of_birth, :is_female, :phone, :skype_id, :country, :state, :city,  :morning, :day, :evning, :avatar])
  end

  def create
  @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end

end
