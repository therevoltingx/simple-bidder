module V1
  class BidRequestController < SimpleBidderApp
    post '/:exchange_id' do
      data = JSON.parse(request.env['rack.input'].read).merge(
        {
          'exchange_id' => params['exchange_id']
        }
      )

      puts JSON.pretty_generate(data)

      BidRequestProcessor.call(data: data)

      status 201
    end
  end
end
