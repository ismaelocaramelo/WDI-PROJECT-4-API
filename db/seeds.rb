User.destroy_all
Category.destroy_all
Tag.destroy_all
Group.destroy_all
Publication.destroy_all
Meal.destroy_all
OrderStatus.destroy_all
OrderRequest.destroy_all
Rating.destroy_all
NotificationType.destroy_all

food = Category.create!(title: "Foods")
  food.childrens.create!(title: "Breakfast")
  lunch = food.childrens.create!(title: "Lunch")
    lunch.childrens.create!(title: "Starters")
    lunch.childrens.create!(title: "Main Courses")
    lunch.childrens.create!(title: "Desserts")
  snack = food.childrens.create!(title: "Snack")
    snack.childrens.create!(title: "Salt")
    snack.childrens.create!(title: "Sweet")
  dinner= food.childrens.create!(title: "Dinner")
    dinner.childrens.create!(title: "Starters")
    dinner.childrens.create!(title: "Main Courses")
    dinner.childrens.create!(title: "Desserts")

drink = Category.create!(title: "Drinks")
  alcohol = drink.childrens.create!(title: "Alcohol")
    alcohol.childrens.create!(title: "Shots")
    alcohol.childrens.create!(title: "Wines")
    alcohol.childrens.create!(title: "Spirits")
    alcohol.childrens.create!(title: "Cocktails")
    alcohol.childrens.create!(title: "Liquors")
    alcohol.childrens.create!(title: "Cava")
  alcohol_free = drink.childrens.create!(title: "Alcohol Free")
    alcohol_free.childrens.create!(title: "Cocktails")
    alcohol_free.childrens.create!(title: "Soft drinks")
    alcohol_free.childrens.create!(title: "Smoothies")
    alcohol_free.childrens.create!(title: "Juices")


OrderStatus.create!(title:"Pending")
OrderStatus.create!(title:"Cancel")
OrderStatus.create!(title:"Rejected")
OrderStatus.create!(title:"Accepted")


NotificationType.create!(name: "Groups")
order = NotificationType.create!(name: "Orders")
NotificationType.create!(name: "Payments")
NotificationType.create!(name: "Reminders")


ismaelo = User.create!(email: "ismy@bas.com", first_name: "ismaelo", last_name: "caramelo", password: "password", password_confirmation: "password")
jos = User.create!(email: "jos@bas.com", first_name: "jos", last_name: "josss", password: "password", password_confirmation: "password")
karima = User.create!(email: "karima@bas.com", first_name: "karima", last_name: "karimaa", password: "password", password_confirmation: "password")


ismaelo.own_groups.create!(name: "127 Seven Sisters", icon: "image", protected: "true")
ismaelo.own_groups.create!(name: "Leganes", icon: "image", protected: "false")

ismaelo.own_notications.create!(message: "So tasteful", type_id: order.id, receiver_id: jos.id)
ismaelo.own_notications.create!(message: "Alberto want's to join  your group", receiver_id: karima.id, type_id: order.id)


hamburguesa = ismaelo.meals.create!(name: "Hundres of burguers", image: "imagen", price_person: 2, category_id: food.id)
hamburguesa.tags.create!(title: '#meat')
hamburguesa.tags.create!(title:'#halal')

#########################################################


## Need user
#ismaelo jos karima
## create a meal
#Burguer
## create publication
Publication.create!(setDate: "22 de marzo", deadline: "18 de marzo", meetingPoint: "leganes", user_id: jos.id, meal_id: hamburguesa.id)
## create OrderStatus
orderStatus1 = OrderStatus.create!(title:"accepted")
## create OrderRequest
order1 = hamburguesa.order_requests.create!(quantity: 3, user_id: karima.id, status_id: orderStatus1.id)
## create rating
Rating.create!(evaluation: 4, user_id: ismaelo.id, order_request_id: order1.id)
