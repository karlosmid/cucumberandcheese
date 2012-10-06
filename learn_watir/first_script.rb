require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.new :chrome
iAmFirefox.goto 'http://www.google.com'
