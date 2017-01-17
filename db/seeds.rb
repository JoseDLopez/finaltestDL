# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Claims.destroy_all
User.destroy_all
Company.destroy_all

# user_list = []
# 30.times.do
#   name = Faker::Name.first_name
#   age = Faker::Number.between(20, 80)
#   email = Faker::Internet.email
#   password = Faker::Internet.password(6)
#   password_confirmation = password
#   # Add user to user_list
#   user_list << [ name, age, email, password, password_confirmation]
# end

# user_list.each do |name, age, email, password, password_confirmation|
#   User.create(name: name, age: age, email: email,  password: password, password_confirmation: password_confirmation)
# end



# company_list = []

# 20.times.do
#   name = Faker::Name.title
#   # Add user to user_list
#   company_list << [name]
# end

# company_list.each do |name|
#   Company.create(name: name)
# end


# claims_list = []

# 250.times.do
#   title = Faker::Name.title
#   content = Faker::Lorem.sentence(3)
#   user_id = Faker::Number.between(16, 36)
#   created_at = Faker::Date.between(30.days.ago, Date.today) #=> "Wed, 24 Sep 2014"
#   # Add user to user_list
#   claims_list << [title,content,user_id,created_at]
# end

# claims_list.each do |title,content,user_id,created_at|
#   Claim.create(title: title, content: content, user_id: user_id, created_at: created_at)
# end