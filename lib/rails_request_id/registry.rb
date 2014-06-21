class ::RailsRequestId::Registry
  extend ActiveSupport::PerThreadRegistry
  attr_accessor :request_id
end
