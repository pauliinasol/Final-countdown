# require 'httparty'
require 'sinatra'

include 'httparty'
# require 'sinatra/reloader'

get '/' do
   @melbourne = HTTParty.get('http://api.openweathermap.org/data/2.5/find?q=Melbourne&units=metric&appid=f01c8b50c27334c34b26a1f56ce2d5f5')
   @melbourne_weather = @melbourne["list"][0]["main"]["temp"]
   @helsinki = HTTParty.get('http://api.openweathermap.org/data/2.5/find?q=Helsinki&units=metric&appid=f01c8b50c27334c34b26a1f56ce2d5f5')
   @helsinki_weather = @helsinki["list"][0]["main"]["temp"]
   erb :index
 end
