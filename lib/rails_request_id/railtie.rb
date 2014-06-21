class ::RailsRequestId::Railtie < ::Rails::Railtie
  initializer :rails_request_id do
    ::RailsRequestId::Initializer.initialize(config)
  end
end
