require 'sidekiq'

class ContactWorker
  include Sidekiq::Worker

  def perform(item)
    contact_object = {email: 'thiennguyen.mark@gmail.com'}
    ContactMailer.send_user_contact_to_admin_system(contact_object).deliver_now
  end
end
