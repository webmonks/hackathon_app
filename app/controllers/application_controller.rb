class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  USERS = { "admin" => "world" }
  protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session

  def check_password
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
