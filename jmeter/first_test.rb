require 'rubygems'
require 'ruby-jmeter'

test do 
  threads count: 10 do
    visit name: 'Google Serach', url: 'http://google.com'
  end
end.jmx(file: ".jmx(file: "C:\automacao\plusqa\jmeter\first_test.jmx")    