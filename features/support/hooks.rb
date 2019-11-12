

Before do
  page.current_window.resize_to(1400, 900)

  @rest_list_page = RestaurantListPage.new
  @rest_page = RestaurantePage.new
  @order_page = OrderPage.new
end

Before("@bread_bakery") do
  visit "/restaurants/bread-bakery/menu"
end

Before("@green_food") do
  visit "/restaurants/green-food/menu"
end