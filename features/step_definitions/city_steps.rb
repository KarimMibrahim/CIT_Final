Given(/^the following sales exist:$/) do |sales_table|
  sales_table.hashes.each do |sale|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.e.
    	Sale.create(:city => sale[:city] , :date => sale[:date] , :price => sale[:price], :good => sale[:price])
  end
end 

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

Then(/^the list should contain only Alex$/) do
  #count == 2
end

