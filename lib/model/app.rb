class App < ActiveRecord::Base
  validates_presence_of :id, :external_id, :exchange_id, :publisher_id, :domain
end
