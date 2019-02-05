Given(/^I have successfully navigated to the budgeting app homepage$/) do
  @budget_page = BudgetPage.new
  @budget_page.load
end

And(/^I enter "([^"]*)" as the description and "([^"]*)" as value and add record$/) do |description, value|
  @budget_page.add_record description, value
end

Then(/^I can see that record in the table$/) do |table|
  all_column_titles = @budget_page.get_all_column_descriptions
  all_column_titles.include? table.hashes.at(0)["Description"]
end

Then(/^I can see that column names in the table$/) do |table|
  all_column_titles = @budget_page.get_all_column_titles
  all_column_titles.equal? table.headers
end

And(/^Rows count is "([^"]*)"$/) do |count|
  @budget_page.get_all_rows_count == count
end


Given(/^I have successfully navigated to the budgeting app reports page$/) do
  @reports_page = ReportsPage.new
  @reports_page.load
end


Then(/^I can see that figure is visible$/) do
  @reports_page.is_figure_visible
end


When(/^I navigated to spending by categories page$/) do
  @reports_page.navigate_to_spending_by_category_tab
end


When(/^I can remove record in the table$/) do
  @budget_page.delete_row 2
end

Then(/^It disappears from the table$/) do |table|
  all_column_titles = @budget_page.get_all_column_descriptions
  all_column_titles.include? table.hashes.at(0)["Description"]
end
