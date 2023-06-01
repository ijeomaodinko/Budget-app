# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview

    def welcome_email
        user = User.new(name: 'John Doe', email: 'john.doe@example.com', confirmation_token: '123456')
        UserMailer.welcome_email(user)
      end
      
end
