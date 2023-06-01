class Devise::RegistrationsController < DeviseController
    # ...
  
    def new
        @user = User.new
    end
    
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

    protected

  def after_sign_up_path_for(resource)
    # Customize your redirect path here
    root_path
  end
  
    private
    def build_resource(sign_up_params)
      self.resource = User.new(sign_up_params)
    end

    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
  end
  