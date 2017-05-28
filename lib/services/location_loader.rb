class LocationLoader
  class << self
    def call(data:)
      location_data = data['device']['geo']

      location = Location.new(
        country: data['country'],
        region: data['region'],
        city: data['city']
      )

      return location
    end
  end
end
