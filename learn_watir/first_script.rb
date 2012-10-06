require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.new :ie
iAmFirefox.goto 'http://www.apple.com'
