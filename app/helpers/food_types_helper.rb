module FoodTypesHelper
  def option_for_food_types_select
    FoodType.all.collect {|e|[e.name, e.id]}
  end
end
