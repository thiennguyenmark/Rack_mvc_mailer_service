$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require 'rack'
require 'erb'
require 'tilt'

module Base
  autoload :Router, 'base/router'
  autoload :Application, 'base/application'
  autoload :BaseController, 'base/base_controller'
end
