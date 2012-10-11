# encoding: utf-8
require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.start 'http://puppies.herokuapp.com', :firefox
iAmFirefox.button(:value => 'View Details', :index => 2).click
iAmFirefox.button(:value => 'Adopt Me!' ).click
iAmFirefox.button(:value => 'Complete the Adoption' ).click
iAmFirefox.text_field(:id => 'order_name').set('Karlo Smid')
iAmFirefox.text_field(:id => 'order_address').set('Hruševečka 3\r\f10000 Zagreb!')
iAmFirefox.text_field(:id => 'order_email').set('ides@kam.hr')
iAmFirefox.select_list(:id => 'order_pay_type').select('Check')
iAmFirefox.select_list(:id => 'order_pay_type').select('Credit card')
iAmFirefox.select_list(:id => 'order_pay_type').select('Purchase order')
sleep 5
iAmFirefox.button(:name => 'commit').click
fail 'Browser page did not contain "Thank you for adopting a puppy!' \
unless iAmFirefox.text.include? 'Thank you for adopting a puppy!'

iAmFirefox.button(:value => 'View Details', :index => 1).click
iAmFirefox.button(:value => 'Adopt Me!' ).click
iAmFirefox.button(:value => 'Complete the Adoption' ).click
iAmFirefox.text_field(:id => 'order_name').set('Karlo Smid')
iAmFirefox.text_field(:id => 'order_address').set('Hruševečka 3\r\f10000 Zagreb!')
iAmFirefox.text_field(:id => 'order_email').set('ides@kam.hr')
iAmFirefox.select_list(:id => 'order_pay_type').select('Check')
iAmFirefox.select_list(:id => 'order_pay_type').select('Credit card')
iAmFirefox.select_list(:id => 'order_pay_type').select('Purchase order')
sleep 5
iAmFirefox.button(:name => 'commit').click
fail 'Browser page did not contain "Thank you for adopting a puppy!' \
unless iAmFirefox.text.include? 'Thank you for adopting a puppy!'
iAmFirefox.close
