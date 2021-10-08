require 'http'

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=cleveland&units=&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")


puts "Please enter your city:"
city = gets.chomp
if city == "cleveland"
  pp response.parse(:json)
end

puts "Which units will you prefer for temprature?"

puts "[C]elcius or [F]arenheit"

input = gets.chomp

units = {"Celcius" => "metric", "Farenheit" => "imperial"}
unit = ""
if input == "C"
  unit = units["Celcius"]

elsif input == "F"
  unit = units["Farenheit"]
end
response_1 = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=cleveland&units=#{unit}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
p response_1.parse(:json)["main"]["temp"]





# pp response.parse(:json)

# puts "----------------------------------------"

# p response.parse(:json)["weather"][0]["main"]
# city = response.parse(:json)["name"]

# p "The best city of OHIO is #{city} which is my hometown!"

