# simple-bidder

## Running Tests

```
RACK_ENV=test rake db:create
RACK_ENV=test rake db:migrate
RACK_ENV=test rake db:seed
RACK_ENV=test rake db:test:prepare
bundle exec rspec
```

## Firehose Schema

```
{
  "type": "bid_request",
  "exchange_id": "smaato",
  "publisher_id": "some-publisher",
  "site_id": "some-site",
  "device_id": "some-device",
  "country": "USA",
  "region": "CA",
  "city": "Los Angeles",
  "js": true,
  "make": "Apple",
  "model": "iPhone",
  "os": "iOS",
  "osv": "7.1",
  "dimension": "320x480",
  "blocked_attributes": ["1", "2"],
  "user_id": "some-user",
  "gender": "male",
  "yob": "1986",
  "bid_floor": "0.10"
}
```
