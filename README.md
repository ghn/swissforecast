#swissforecast

Ruby client for the Swiss weather forecast API

##Installation

```bash
gem install swissforecast
```

##Usage

To talk to the API, get a client:

```ruby
require 'swissforecast'
client = Swissforecast::Client.new
```

See below how to use this client.

###Find by city

```ruby
client.find_by_city 'Lausanne'
```

###Find by position

```ruby
client.find_by_position '46.58', '6.60'
```

## Development

Running the tests

```bash
rake test
```

## License

MIT License (MIT)
