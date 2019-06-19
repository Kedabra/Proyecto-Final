class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def receive(email)
    mail(to: "omarelias1997@gmail.com",
      subject: contact.subject,
      body: contact.body.to_s +
           "\n (Sender is #{contact.name} and their email is #{contact.email})")
  end
end
