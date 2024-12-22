require 'json'
require 'pry'

data = {
  "event_schema": {
    "item": "string",
    "order_number": "int",
    "price": "float",
    "size": "string"
  }
}

data_json = data.to_json

binding.pry