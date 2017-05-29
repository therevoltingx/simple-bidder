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
  "exchange_id": "ADFDFGDAF",
  "publisher_id": "DFHGFGNSDFG",
  "app_id": "OOKMASDFOIJASDFON",
  "site_id": "DFHSFHSFDGDFG",
  "device_id": "DFGSFGSDFGDSFASDFASDF",
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
  "user_id": "ADGADFASDFASDF",
  "gender": "male",
  "yob": "1986"
}
```
