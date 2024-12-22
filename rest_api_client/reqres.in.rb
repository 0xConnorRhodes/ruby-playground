require 'httparty'
require 'json'
require 'pry'

hp = HTTParty

data = hp.get("https://reqres.in/api/users?page=2")
data = JSON.parse(data.body, symbolize_names: true)

binding.pry