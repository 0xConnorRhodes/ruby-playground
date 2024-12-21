require 'httparty'
require 'json'
require 'dotenv/load'
require 'pry'

hp = HTTParty

api_key = ENV["OPEN_WEATHER_MAP_KEY"]

zip_code = ARGV[0]

geo = hp.get("http://api.openweathermap.org/geo/1.0/zip?zip=#{zip_code},US&appid=#{api_key}")

weather = hp.get("https://api.openweathermap.org/data/2.5/weather?lat=#{geo["lat"]}&lon=#{geo["lon"]}&units=imperial&appid=#{api_key}")

weather = JSON.parse(weather.body, symbolize_names: true)

binding.pry
