class Publisher < ActiveRecord::Base
  validates_presence_of :id, :external_id, :exchange_id
end
