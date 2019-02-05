class ReportsPage < SitePrism::Page
  set_url "http://localhost:8000/reports/"


  element :inflow_vs_outflow_tab, "a[href='/reports/inflow-outflow']"
  element :spending_by_category_tab, "a[href='/reports/spending']"
  element :figure, "main section svg"


  def is_figure_visible
    figure.visible?
  end

  def navigate_to_spending_by_category_tab
    spending_by_category_tab.click
  end

end
