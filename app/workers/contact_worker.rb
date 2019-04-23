require 'sidekiq'

class ContactWorker
  include Sidekiq::Worker

  def perform(item)
    puts 'This is your messages'
  end
end
