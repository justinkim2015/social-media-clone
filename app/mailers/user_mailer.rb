class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url = 'https://rails-book.onrender.com/'
    mail(to: @user.email, subject: 'Welcome to Railsbook')
  end
end
