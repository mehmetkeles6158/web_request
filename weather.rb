require 'http'
require 'awesome_print'

#Improving weather app( making more user friendly)

while true
  
  p "Enter Your Preferred City and type 'q' to quit:"
  city_name = gets.chomp.downcase

  if city_name == "q"
    break
  end

  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_name}&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")


  weather_response = response.parse(:json)
  ap weather_response

  # description
  description = weather_response["weather"][0]["description"]

  # temperature
  temperature = weather_response["main"]["temp"]

  #city name
  city = weather_response["name"]

  p "The city of #{city} has currently #{temperature} and #{description} right now"

end






# puts "Please enter your city:"
# city = gets.chomp
# if city == "cleveland"
#   pp response.parse(:json)
# end

# puts "Which units will you prefer for temprature?"

# puts "[C]elcius or [F]arenheit"

# input = gets.chomp

# units = {"Celcius" => "metric", "Farenheit" => "imperial"}
# unit = ""
# if input == "C"
#   unit = units["Celcius"]

# elsif input == "F"
#   unit = units["Farenheit"]
# end
# response_1 = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=cleveland&units=#{unit}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
# p response_1.parse(:json)["main"]["temp"]





# pp response.parse(:json)

# puts "----------------------------------------"

# p response.parse(:json)["weather"][0]["main"]
# city = response.parse(:json)["name"]

# p "The best city of OHIO is #{city} which is my hometown!"

