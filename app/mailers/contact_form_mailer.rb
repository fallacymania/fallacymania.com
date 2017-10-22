class ContactFormMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_form_mailer.contact_us.subject
  #
  def contact_us(name: , email: , phone: , message: )
    @name , @email , @phone , @message = name , email , phone , message



    mail to: "info@fallacymania.com", from:'noreply@fallacymania.com', reply_to: @email, subject: default_i18n_subject(name: @name)
  end
end
