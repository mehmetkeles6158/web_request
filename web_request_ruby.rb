require 'http'

response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

p response.parse(:json)

response_1 = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json ")

name = response_1.parse(:json)[0]["name"]

p "First person' full name from the list is #{name}"