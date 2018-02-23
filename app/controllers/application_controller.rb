class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :phone1])
  end

    # prepend_before_action :configure_permitted_parameters, if: :devise_controller?
    # private
    # def configure_permitted_parameters
    #     # devise_parameter_sanitizer.for(:sign_up) << :name
    #     devise_parameter_sanitizer.for(:account_update) << :firstname << :lastname << :phone1
    # end


    # before_action :current_user, :cors_preflight_check
    # after_action :cors_set_access_control_headers
    # skip_before_action :verify_authenticity_token

    # From https://www.airpair.com/ruby-on-rails/posts/authentication-with-angularjs-and-ruby-on-rails
    # include ActionController::MimeResponds

    # From https://stackoverflow.com/questions/17858178/allow-anything-through-cors-policy
    # For all responses in this controller, return the CORS access control headers.

    # def cors_set_access_control_headers
    #   headers['Access-Control-Allow-Origin'] = 'http://localhost:8080'
    #   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    #   headers['Access-Control-Allow-Headers'] = '*'
    #   headers['Access-Control-Max-Age'] = "1728000"
    # end
    #
    # # If this is a preflight OPTIONS request, then short-circuit the
    # # request, return only the necessary headers and return an empty
    # # text/plain.
    #
    # def cors_preflight_check
    #   if request.method == :options
    #     headers['Access-Control-Allow-Origin'] = 'http://localhost:8080'
    #     headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    #     headers['Access-Control-Allow-Headers'] = '*'
    #     headers['Access-Control-Max-Age'] = '1728000'
    #     render :text => '', :content_type => 'text/plain'
    #   end
    # end

end
