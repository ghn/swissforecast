require File.join(File.dirname(__FILE__), 'lib/swissforecast')

client = Swissforecast::Client.new

weather = client.find_by_city 'Lausanne'
puts weather['city_info']['name']
