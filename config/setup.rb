require 'bundler/setup'
require './app/workers/contact_worker'
require './app/mailers/contact_mailer'
require 'redis'
require 'yaml'

require './app/models/contact'

def db_configuration
  db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
  YAML.load(File.read(db_configuration_file))
end

yaml_data = YAML::load(ERB.new(IO.read(File.join('.', 'config', 'application.yml'))).result)
APP_CONFIG = HashWithIndifferentAccess.new(yaml_data)

ActiveRecord::Base.establish_connection(db_configuration["development"])
Bundler.require(:default, :development)
