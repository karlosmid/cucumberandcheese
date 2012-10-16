# encoding: utf-8
require "rubygems"
require "watir-webdriver"
require_relative "adoption_helper"

include AdoptionHelper

@i_am_firefox = goto_to 'http://puppies.herokuapp.com', :firefox
adopt_puppy_by_number_position_on_page_counting_from_top 1
continue_adopting_pupies
adopt_puppy_by_number_position_on_page_counting_from_top 2
complete_adoptation_of_puppies
enter_your_purchase_details( 'Karlo Šmid', 'Hruševečka 3', 'ides@kam.hr', 'Credit card' )
sleep 5
commit_adoption_of_puppies
sleep 4
verify_does_page_contains 'Thank you for adopting a puppy!'
close_the_browser
