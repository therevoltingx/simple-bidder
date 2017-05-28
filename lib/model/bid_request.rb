class BidRequest
  include ActiveModel::Validations

  attr_accessor :id, :external_id

  validates_presence_of :id, :external_id

  def initialize(attributes = {})
    unless attributes.nil?
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  end

  def persisted?
    false
  end
end
