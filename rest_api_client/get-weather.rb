require 'httparty'
require 'json'
require 'pry'

hp = HTTParty

api_key = '**********'

geo = hp.get("http://api.openweathermap.org/geo/1.0/zip?zip=78758,US&appid=#{api_key}")

weather = hp.get("https://api.openweathermap.org/data/2.5/weather?lat=#{geo["lat"]}&lon=#{geo["lon"]}&units=imperial&appid=#{api_key}", format: :plain)
weather = JSON.parse(weather, symbolize_names: true)

binding.pry
