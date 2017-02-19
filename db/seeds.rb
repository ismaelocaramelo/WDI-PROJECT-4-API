# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

ismaelo = User.create!(email: "ismy@bas.com", first_name: "ismaelo", last_name: "caramelo", password: "password", password_confirmation: "password")
jos = User.create!(email: "jos@bas.com", first_name: "jos", last_name: "josss", password: "password", password_confirmation: "password")
karima = User.create!(email: "karima@bas.com", first_name: "karima", last_name: "karimaa", password: "password", password_confirmation: "password")
food = Category.create!(title: "Food")
drink = Category.create!(title: "Drink")

food.childrens.create!(title: "Lunch")
cocktail = drink.childrens.create!(title: "Cocktail")
drink.childrens.create!(title: "Juice")

alcohol = cocktail.childrens.create!(title: "Alcohol")
cocktail.childrens.create!(title: "Alcohol Free")

alcohol.childrens.create!(title: "Shot")

ismaelo.own_groups.create!(name: "127 Seven Sisters", icon: "image", protected: "true")
ismaelo.own_groups.create!(name: "Leganes", icon: "image", protected: "false")
meal_notification= NotificationType.create!(name: "Meal notification")
ismaelo.own_notications.create!(message: "So tasteful", type_id: meal_notification.id, receiver_id: jos.id)
ismaelo.own_notications.create!(message: "Alberto want's to join  your group", receiver_id: karima.id, type_id: meal_notification.id)


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
