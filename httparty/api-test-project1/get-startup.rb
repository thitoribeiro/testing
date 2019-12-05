require 'httparty'
response = HTTParty.get('https://swapi.co/api/people/1/')
puts "response code :#{response.code}"
puts "response code :#{response.message}"
puts "response code :#{response.headers}"
puts "response code :#{response.body}"

