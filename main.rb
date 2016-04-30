require 'pry'
require 'httparty'
require 'sinatra'
require 'sinatra/reloader'


get '/' do
   @melbourne = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=melbourne&apikey=f01c8b50c27334c34b26a1f56ce2d5f5')
   @melbourne_weather = @melbourne["main"]["temp"] - 273.5
   @helsinki = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=helsinki&apikey=f01c8b50c27334c34b26a1f56ce2d5f5')
   @helsinki_weather = @helsinki["main"]["temp"] - 273.5
   erb :index
 end
