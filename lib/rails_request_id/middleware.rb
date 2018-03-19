class ::RailsRequestId::Middleware
  def initialize(app)
    @app = app
  end

  def call(env)
    ::RailsRequestId::Registry.request_id = env['action_dispatch.request_id']
    @app.call(env)
  ensure
    ::RailsRequestId::Registry.request_id = nil
  end
end
