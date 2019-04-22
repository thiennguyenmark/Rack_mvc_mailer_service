$LOAD_PATH.unshift '.'

require 'lib/base'
require 'app/controllers/home_controller'
require 'app/models/contact'

# use Rack::CommonLogger
use Rack::Static, root: 'app/assets', urls: ['/images', '/js', '/css']
use Rack::ContentLength
use Rack::Reloader, 0
use Frack::Router do
  match '/' => 'home#contact'
  match '/done' => 'home#send_mail_to_system'
end

run Frack::Application
