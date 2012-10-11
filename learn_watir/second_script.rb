# encoding: utf-8
require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.start 'http://puppies.herokuapp.com', :firefox
iAmFirefox.button(:value => 'View Details', :index => 2).click
iAmFirefox.button(:value => 'Adopt Me!' ).click
iAmFirefox.button(:value => 'Adopt Another Puppy' ).click

iAmFirefox.button(:value => 'View Details', :index => 1).click
iAmFirefox.button(:value => 'Adopt Me!' ).click
iAmFirefox.button(:value => 'Complete the Adoption' ).click
iAmFirefox.text_field(:id => 'order_name').set('Karlo Smid')
iAmFirefox.text_field(:id => 'order_address').set('Hruševečka 3 10000 Zagreb!')
iAmFirefox.text_field(:id => 'order_email').set('ides@kam.hr')
iAmFirefox.select_list(:id => 'order_pay_type').select('Credit card')
sleep 5
iAmFirefox.button(:name => 'commit').click
sleep 4
fail 'Browser page did not contain "Thank you for adopting a puppy!' \
unless iAmFirefox.text.include? 'Thank you for adopting a puppy!'
iAmFirefox.close
