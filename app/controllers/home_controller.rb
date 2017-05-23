class HomeController < ActionController::Base
  #protect_from_forgery with: :exception
  layout "main"
  def index
	@products = Product.all
  end
end
