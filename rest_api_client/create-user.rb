require 'httparty'
require 'json'
require 'pry'
hp = HTTParty

body = {
  "name": "morpheus",
  "job": "leader"
}

response = hp.post("https://reqres.in/api/users", body: body)

binding.pry