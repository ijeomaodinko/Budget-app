class Devise::RegistrationsController < DeviseController
    # ...
  
    def create
      build_resource(sign_up_params)
  
      if resource.save
        # Customize the redirect location below
        redirect_to root_path, notice: "User was successfully created."
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
    end
  
    # ...
  end
  