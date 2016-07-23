#swissforecast

Ruby client for the Swiss weather forecast API

##Installation

```bash
gem install swissforecast

#run example
ruby example.rb
```

##Usage

To talk to the API, get a client:

```ruby
require 'swissforecast'
client = Swissforecast::Client.new
```

See below how to use this client.

###Locations

```ruby
client.find_by_city 'Lausanne'
```

## Development

Running the tests

```bash
rake test
```

## License

MIT License (MIT)
