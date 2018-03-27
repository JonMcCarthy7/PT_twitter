class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @slogan = "This is my slogan"
end
