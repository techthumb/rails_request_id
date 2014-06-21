class ::RailsRequestId::Initializer
  def self.initialize(config)
    config.app_middleware.insert_after ActionDispatch::RequestId, 'RailsRequestId::Middleware'
  end
end
