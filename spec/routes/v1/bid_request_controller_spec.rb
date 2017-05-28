ENV['RACK_ENV'] = 'test'

require './app'
require 'rspec'
require 'rack/test'
require './spec/spec_helper'

describe V1::BidRequestController do
  include Rack::Test::Methods

  def app
    V1::BidRequestController
  end

  context '.create' do
    context 'valid data is given' do
      let(:exchange_id) { 'smaato' }

      let(:data) {
        File.read('./samples/smaato/rich-media.json')
      }

      let(:res) { post "/#{exchange_id}", data, 'CONTENT_TYPE' => 'application/json' }

      it 'returns 201' do
        expect(res.status).to eq(201)
      end
    end
  end
end
