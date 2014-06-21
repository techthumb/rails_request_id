require 'spec_helper'

describe ::RailsRequestId::Middleware do
  let(:request_id)  { SecureRandom.uuid }
  let(:env)         { { 'action_dispatch.request_id' => request_id } }
  subject           { ::RailsRequestId::Middleware.new(app).call(env) }

  context 'happy days' do
    let(:app)         { double('app', call: nil) }
    it 'sets and clears request_id in registry' do
      expect(::RailsRequestId::Registry).to receive(:request_id=).with(request_id).ordered
      expect(::RailsRequestId::Registry).to receive(:request_id=).with(nil).ordered
      subject
    end
  end

  context 'when an exception is raised' do
    let(:app)         { double('app') }
    before :each do
      allow(app).to receive(:call).and_raise('a test exception')
    end
    it 'sets and clears request_id in registry' do
      expect(::RailsRequestId::Registry).to receive(:request_id=).with(request_id).ordered
      expect(::RailsRequestId::Registry).to receive(:request_id=).with(nil).ordered
      begin
        subject
      rescue
      end
    end
  end

end
