module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name

    devise_parameter_sanitizer.for(:sign_up) << :address
    devise_parameter_sanitizer.for(:account_update) << :address

    devise_parameter_sanitizer.for(:sign_up) << :description
    devise_parameter_sanitizer.for(:account_update) << :description

    devise_parameter_sanitizer.for(:sign_up) << :zipcode
    devise_parameter_sanitizer.for(:account_update) << :zipcode

    devise_parameter_sanitizer.for(:sign_up) << :numberofinternships
    devise_parameter_sanitizer.for(:account_update) << :numberofinternships

    devise_parameter_sanitizer.for(:sign_up) << :website
    devise_parameter_sanitizer.for(:account_update) << :website

    devise_parameter_sanitizer.for(:sign_up) << :contactperson
    devise_parameter_sanitizer.for(:account_update) << :contactperson

    devise_parameter_sanitizer.for(:sign_up) << :internshipdetails
    devise_parameter_sanitizer.for(:account_update) << :internshipdetails

    devise_parameter_sanitizer.for(:sign_up) << :languages
    devise_parameter_sanitizer.for(:account_update) << :languages

    devise_parameter_sanitizer.for(:sign_up) << :workenviornment
    devise_parameter_sanitizer.for(:account_update) << :workenviornment
  end
end

DeviseController.send :include, DevisePermittedParameters
