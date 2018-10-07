class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	 protected

		def configure_permitted_parameters
	        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:name_family_name,:name_name,:furigana_family_name,:furigana_name_name])
	    end
	

end
