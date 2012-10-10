require "rubygems"
require "watir-webdriver"
iAmFirefox = Watir::Browser.start 'http://puppies.herokuapp.com', :firefox
iAmFirefox.button(:value => 'View Details', :index => 2).click
iAmFirefox.button(:value => 'Adopt Me!' ).click
iAmFirefox.button(:value => 'Complete the Adoption' ).click
iAmFirefox.text_field(:id => 'order_name').set('Karlo Smid')
iAmFirefox.text_field(:id => 'order_address').set('Hrusevecka 3\n 10000 Zagreb!')
iAmFirefox.text_field(:id => 'order_email').set('ides@kam.hr')
iAmFirefox.select_list(:id => 'order_pay_type').select('Check')
iAmFirefox.select_list(:id => 'order_pay_type').select('Credit card')
iAmFirefox.select_list(:id => 'order_pay_type').select('Purchase order')
iAmFirefox.button(:name => 'commit').click
sleep 5
iAmFirefox.close
