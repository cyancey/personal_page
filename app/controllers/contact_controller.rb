class ContactController < ApplicationController
  def email
    p params
    message = params[:message]
    contact_email = params[:email]
    ContactMailer.contact_form(contact_email, message)
    redirect_to :root
  end
end