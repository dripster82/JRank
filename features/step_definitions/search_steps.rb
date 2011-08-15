
def limit
	@limit ||= 10
end

def start
	@start ||= 0
end

Given /^I have a query of "([^"]*)"$/ do |query|
  @query = query
end

Given /^I have a start value of "([^"]*)"$/ do |start|
  @start = start
end

Given /^I have a limit value of "([^"]*)"$/ do |limit|
  @limit = limit
end

When /^I submit a search$/ do
	jrank_search = Jrank::Search.new
	@search_results = jrank_search.find(@query, start, limit)
end

Then /^I should have an xml object$/ do
	@search_results.meta.total != nil
end

Then /^the xml has no results$/ do
	@search_results.entries.should == ""
end

Then /^the xml current page is "([^"]*)"$/ do |current_page|
  @search_results.meta.current_page.should == current_page
end

Then /^the xml page limit is "([^"]*)"$/ do |limit|
  @search_results.meta.limit.should == limit
end