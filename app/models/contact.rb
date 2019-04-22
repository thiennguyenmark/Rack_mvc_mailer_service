require_relative 'application_record'

class Contact < ApplicationRecord
  validates :message, presence: true
end
