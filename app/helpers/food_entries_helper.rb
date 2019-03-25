module FoodEntriesHelper
  def get_food_type_name(food_type_id)     
    return FoodType.where(id: food_type_id).select(:name).map{|x|x[:name]}.join(', ')   
  end
end
