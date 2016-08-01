class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_message.subject
  #
  def new_message(name, email, subject, message)
    @name = name
    @email = email 
    @subject = subject
    @message = message
    mail to: "carmonamiguel1212@gmail.com", subject: "Alguien te envío un mensaje"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.thanks.subject
  #
  def thanks(email, name)
    @name = name
    @email = email
    mail to: email, subject: "Uva Guayacanes"
  end
end
