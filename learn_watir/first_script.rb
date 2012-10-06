require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.new :firefox
iAmFirefox.goto 'http://puppies.herokuapp.com'
sleep 5
iAmFirefox.close

