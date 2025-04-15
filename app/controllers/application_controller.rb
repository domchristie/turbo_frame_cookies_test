class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def index
    session[:text] = "Alice"
  end

  def show
  end

  def update
    session[:text] = "Bob"
    redirect_to application_path, status: :see_other
  end

  def frame
    sleep 5
  end
end
