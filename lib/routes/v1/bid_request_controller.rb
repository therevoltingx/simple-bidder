module V1
  class BidRequestController < SimpleBidderApp
    post '/:exchange_id' do
      data = JSON.parse(request.env['rack.input'].read).merge(
        {
          'exchange_id' => params['exchange_id']
        }
      )

      # puts JSON.pretty_generate(data)

      bid_request = BidRequestLoader.call(data: data)
      BidRequestSender.call(bid_request: bid_request)

      status 204
    end
  end
end
