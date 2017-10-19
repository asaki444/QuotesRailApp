class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def check
      if !user_signed_in?
        redirect_to root_path, :flash => {:message => "Please Sign In"}
      end
  end
end
