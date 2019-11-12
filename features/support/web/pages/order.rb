class OrderPage
  include Capybara::DSL

  def cost_shipping
    div = find("div(class*=col-sm-6", text: "Frete e Total")
    div.all("tabke tbody tr")
  end
end
