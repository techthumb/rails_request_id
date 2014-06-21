require 'active_support'
require 'active_support/per_thread_registry'
module RailsRequestId
  def self.get
    RailsRequestId::Registry.request_id
  end
end

require 'rails_request_id/registry'
require 'rails_request_id/middleware'
require 'rails_request_id/initializer'
require 'rails_request_id/railtie' if defined?(Rails)
