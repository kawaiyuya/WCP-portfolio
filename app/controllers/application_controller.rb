class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
	    if admin_signed_in?
	      admins_admins_path
	    elsif user_signed_in?
	      spaces_path
	    else
	      spaces_path
	    end
  	end
  	def after_sign_out_path_for(resource)
	    if admin_signed_in?
	      new_admin_session_path
	    elsif user_signed_in?
	      spaces_path
	    else
	      spaces_path
    	end
  	end

	 protected

		def configure_permitted_parameters
	        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:name_family_name,:name_name,:furigana_family_name,:furigana_name_name])
	    end
	

end
