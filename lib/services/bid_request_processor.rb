class BidRequestProcessor
  class << self
    ## create a bid request object that contains all found or created resources
    def call(data:)
      exchange = ExchangeLoader.call(data: data)
      publisher = PublisherLoader.call(data: data, exchange: exchange)
      app = AppLoader.call(data: data, exchange: exchange, publisher: publisher)

      bid_request = BidRequest.new(
        id: SecureRandom.hex,
        external_id: data['id']
      )
    end
  end
end
