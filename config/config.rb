require 'mixlib/config'

module Config
  extend Mixlib::Config
  config_strict_mode true
  default :environment, ENV['RACK_ENV'] || ENV['RAILS_ENV'] || 'development'

  config_context :puma do
    default :bind, ENV['PUMA_BIND'] || 'tcp://0.0.0.0:9292'
  end

  config_context :tranquility do
    default :address, ENV['TRANQUILITY_ADDRESS'] || '127.0.0.1'
    default :port, ENV['TRANQUILITY_PORT'] || 8200
  end
end
