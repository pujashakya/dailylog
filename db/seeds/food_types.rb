
# begin
#   FoodType.find(1)
#   byebug
# rescue ActiveRecord::RecordNotFound
#         byebug
#   foodtype=FoodType.new(id:2,name:'rice cereal')
#   foodtype.save!

# end

FoodType.delete_all

FoodType.create(name:'Home made food1')
FoodType.create(name:'Rice cereal1')
FoodType.create(name:'formula1')
FoodType.create(name:'fruit paste')
