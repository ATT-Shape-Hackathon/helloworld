class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, notice: 'Must login first'
    end
  end
end
