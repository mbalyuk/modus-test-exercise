class BudgetPage < SitePrism::Page
  set_url "http://localhost:8000"

  element :budget_table, "main table"
  element :select_category, "select[name='categoryId']"
  element :textbox_description, "input[name='description']"
  element :textbox_value, "input[name='value']"
  element :button_add, "button[type='submit']"
  elements :budget_table_rows, "main table tbody tr"
  elements :budget_table_column_titles, "main table thead tr"
  elements :budget_table_column_category, "main table tbody tr td"
  elements :budget_table_column_description, "main table tbody tr td:nth-child(2)"

  def add_record(description, value)
    wait_until_budget_table_visible
    textbox_description.set description
    textbox_value.set value
    button_add.click
  end

  def get_all_column_titles
    page.all('main table thead tr th').map(&:text)
  end

  def get_all_rows_count
    budget_table_rows.size
  end

  def get_all_column_descriptions
    wait_until_budget_table_column_description_visible
    budget_table_column_description.map(&:text)
  end

  def delete_row index
    budget_table_rows.at(index).click
  end

end
