class BidRequestSender
  class << self
    def call(bid_request:)
      data = BidRequestSerializer.call(
        bid_request: bid_request
      )
    end
  end
end
