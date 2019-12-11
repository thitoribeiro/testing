require 'httparty'
response = HTTParty.post('https://swapi.co/api/people/1/', :body => {"nome":"sympla","cidade":"São Paulo"})
puts "response code :#{response.code}"
puts "response code :#{response.message}"
puts "response code :#{response.headers.inspect}"
puts "response code :#{response.body}"