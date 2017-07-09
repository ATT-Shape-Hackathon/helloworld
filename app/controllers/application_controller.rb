class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path, flash: { info: 'Must login to make that request' }
    end
  end
end
