class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

=begin
  before_action :show_flash

  private

  def show_flash
    flash.now[:notice] = "Found the root page!" if request.path == '/'
  end

=end
end
