#swissforecast

[![Gem Version](https://badge.fury.io/rb/swissforecast.svg)](https://badge.fury.io/rb/swissforecast)
[![Build Status](https://travis-ci.org/ghn/swissforecast.svg?branch=master)](https://travis-ci.org/ghn/swissforecast)

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
client.find_by city: 'Lausanne'
```

###Find by position

```ruby
client.find_by lat: '46.58', lng: '6.60'
```

## Development

Running the tests

```bash
rake test
```

## License

MIT License (MIT)

Thanks to [Prevision meteo](http://www.prevision-meteo.ch) for opening their data
