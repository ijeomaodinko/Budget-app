class UsersController < ApplicationController
  before_action :authenticate_user!
  def index; end

  def new; end

  def show; end

    # POST /users or /users.json
    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          # Tell the UserMailer to send a welcome email after save
          UserMailer.with(user: @user).welcome_email.deliver_now
            # Redirect to the homepage or another page
            redirect_to root_url, notice: 'Thank you for signing up!'
        else
          render :new
        end
      end
    end
  
end
