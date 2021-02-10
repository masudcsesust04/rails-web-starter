class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :set_layout

  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to request.referer, notice: 'You have no permission to access!'
  end

  protected

  def set_layout
    return if current_user.present?

    'login'
  end
end
