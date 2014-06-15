class ContactMailer < ActionMailer::Base
  default from: ENV['GMAIL_USERNAME']
  default to: ENV['PERSONAL_EMAIL']
  default subject: "Message sent via chrisyancey.me"

  def contact_form(contact_email, message)
    @contact_email = contact_email
    @message = message
    mail().deliver
  end

end