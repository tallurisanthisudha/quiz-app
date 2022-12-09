class ApplicationController < ActionController::Base


    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    
    
    protected
     def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     end
    
     def after_sign_in_path_for(resource)
        if current_user 
          root_path
        end
      end

end
