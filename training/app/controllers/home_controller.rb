class HomeController < ActionController::Base
	before_filter :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
def index
	@uebungs = Uebung.all
end

end