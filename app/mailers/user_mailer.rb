class UserMailer < ApplicationMailer
    default from: 'notifications@budget-app-962l.onrender.com'

    def welcome_email
      @user = params[:user]
      @url  = 'https://budget-app-962l.onrender.com/login'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
