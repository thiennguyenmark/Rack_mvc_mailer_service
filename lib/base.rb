$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'rack'
require 'erb'
require 'tilt'

module Frack
  autoload :Router, 'base_controller/router'
  autoload :Application, 'base_controller/application'
  autoload :BaseController, 'base_controller/base_controller'
end
