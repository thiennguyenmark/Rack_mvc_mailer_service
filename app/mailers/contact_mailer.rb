require_relative 'application_mailer'
class ContactMailer < ActionMailer::Base
  def send_user_contact_to_admin_system contact_object
    mail(
      to:       contact_object[:email],
      subject: 'Using for contact user',
      content_type: 'text/html',
      body:    'Not defined yet !'
      )
  end
end
