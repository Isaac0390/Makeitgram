class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.congrats.subject
  #
  def congrats(user)
    @user = user
    mail to: user.email, subject: "Congratulations!!!"
  end
end