class ApplicationController < ActionController::Base
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :firstname, :lastname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :firstname, :lastname])
  end
end
=======
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :firstname, :lastname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :firstname, :lastname])
    end
  end
>>>>>>> 9818fd24dfe010a7f565edc615582772737bb1fa
