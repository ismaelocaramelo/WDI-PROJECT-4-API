rails new josapp -d postgresql --api
rails g scaffold User first_name last_name photo:text email
rails g scaffold User first_name last_name photo:text email
rails g scaffold OrderRequest user_id:references status_id:refrences publication_id:references meal_id:references payment:boolean
rails g scaffold Meal name image category_id:references price_person:integer user_id:references date:timestamp
rais db:create db:migrate
rails db:create db:migrate
rails g scaffold OrderRequest quantity:integer payment:boolean
rails g scaffold Meal name image:text price_person:decimal date:timestamp
rails g scaffold Notification date:timestamp message:text
rails g scaffold NotificationType name
rails g scaffold Rating evaluation:integer
rails g migration CreateMealTagsJoinTable meal_id:integer tags_id:integer
rails g scaffold Tags title
rails g scaffold Publication date:timestamp setDate:timestamp deadline:timestamp meetingPoint:text
rails g scaffold Category title
rails g scaffold Group name icon:text protected:boolean
rails g migration CreateJoinTableGroupUsers group user
rails g scaffold OrderStatus title
rails g migration AddfieldsToUser first_name last_name photo:text
rails db:migrate
rails g migration AddAdminIdToGroup admin_id:integer
rails g migration AddfieldsToMeal category_id:integer user_id:integer
rails g migration AddfieldToPublication user_id:integer
rails db:drop db:create db:migrate
rails generate migration meal_tags
rails g migration AddfieldsToUser first_name last_name photo:text

rails d migration CreateMealTagsJoinTable meal_id:integer tags_id:integer
rails d migration CreateJoinTableGroupUsers group user
rails d migration AddfieldsToUser first_name last_name photo:text
rails d migration AddAdminIdToGroup admin_id:integer
rails d migration AddfieldsToMeal category_id:integer user_id:integer
rails d migration AddfieldToPublication user_id:integer
