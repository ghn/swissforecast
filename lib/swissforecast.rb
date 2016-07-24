require 'json'
require 'net/http'

module Swissforecast
  class Client
    DEFAULT_DOMAIN = 'http://www.prevision-meteo.ch/services/json'.freeze

    #
    # => find weather by city
    #

    def find_by_city(city)
      perform(city.sub(' ', '-'))
    end

    def find_by_position(lat, lng)
      perform("lat=#{lat}lng=#{lng}")
    end

    private

    attr_reader :domain

    def perform(params = '')
      response = Net::HTTP.get(URI("#{DEFAULT_DOMAIN}/#{params}"))

      # Uncomment the line below to dump the response in order to generate
      # a file to use as response stub in tests.
      # File.write('/tmp/response.json', response)

      JSON.parse(response)
    end
  end
end
