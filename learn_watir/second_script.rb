# encoding: utf-8
require "rubygems"
require "watir-webdriver"

def adopt_puppy_by_number_position_on_page_counting_from_top( numberPositionCountingFromTheTopOfPage )
	@i_am_firefox.button( :value => 'View Details', :index => numberPositionCountingFromTheTopOfPage - 1 ).click
	@i_am_firefox.button( :value => 'Adopt Me!' ).click
end

def continue_adopting_pupies
	@i_am_firefox.button( :value => 'Adopt Another Puppy' ).click
end

def complete_adoptation_of_puppies
	@i_am_firefox.button( :value => 'Complete the Adoption' ).click
end

def enter_your_purchase_details( name, address, email, payment_type )
	@i_am_firefox.text_field( :id => 'order_name' ).set( name )
	@i_am_firefox.text_field( :id => 'order_address' ).set( address )
	@i_am_firefox.text_field( :id => 'order_email' ).set( email )
	@i_am_firefox.select_list( :id => 'order_pay_type' ).select( payment_type )
end

def commit_adoption_of_puppies
	@i_am_firefox.button( :name => 'commit' ).click
end

def goto_to( page_link, with_browser )
	return Watir::Browser.start page_link, with_browser
end

def verify_does_page_contains( text )
	fail 'Browser did not contain expected text: ' + text\
	unless @i_am_firefox.text.include? text	
end

def close_the_browser
	@i_am_firefox.close
end

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
