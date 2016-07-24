require 'test_helper'
require 'pp'

class ClientTest < Minitest::Test
  def setup
    WebMock.reset!

    @client = Swissforecast::Client.new
  end

  def test_find_by_city
    stub_response('client_test_city.json')

    weather = @client.find_by_city 'lausanne'

    assert weather.city_info.name == 'Lausanne'
    assert weather.city_info.country == 'Suisse'
  end

  def test_find_by_position
    stub_response('client_test_position.json')

    weather = @client.find_by_position '46.58', '6.60'

    assert weather.city_info.name == 'NA'
    assert weather.city_info.country == '--'
    assert weather.city_info.sunrise == '05:59'
  end

  def test_errors
    stub_response('client_test_failure.json')

    weather = @client.find_by_city 'not_existing_city'

    assert weather.errors.count == 1
    assert weather.errors.first.code == '11'
  end

  def stub_response(name, url = /.*/, method = :get)
    # Uncomment lines below should you feel the urge to test against the live
    # API as the stubbing isn't very thorough as of now. (e.g. URLs requested
    # aren't checked)
    # WebMock.allow_net_connect!
    # return

    dirname = File.dirname(__FILE__)

    content = File.read("#{dirname}/responses/#{name}")

    stub_request(method, url).to_return(status: 200, body: content)
  end
end
