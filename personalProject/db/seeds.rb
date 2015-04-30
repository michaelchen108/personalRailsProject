# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:name => 'Superman', :address => 'Berkeley, CA', :email => 'super@man.com', :password => 'password', :password_confirmation => 'password')
User.create(:name => 'Batman', :address => 'Berkeley, CA', :email => 'bat@man.com', :password => 'password', :password_confirmation => 'password')
User.create(:name => 'Ironman', :address => 'San Diego, CA', :email => 'iron@man.com', :password => 'password', :password_confirmation => 'password')
User.create(:name => 'Ash Ketchum', :address => 'San Diego, CA', :email => 'ash@ketchum.com', :password => 'password', :password_confirmation => 'password')


Post.create(title: "Bicycle", :address => 'Berkeley, CA', description: "This is an old bicycle that I'm selling for $50.", user_id: 1)
Post.create(title: "Lawn Mower", :address => 'Berkeley, CA', description: "I need to get rid of this lawnmower, please pick it up!", user_id: 1);
Post.create(title: "TV Monitor",  :address => 'Berkeley, CA', description: "A 36 inch monitor that I don't need anymore, please PM me if you're interested.", user_id: 2);
Post.create(title: "Summer sublet", :address => 'San Diego, CA', description: "Sublet in 2BR 2BA apt! 550 per month, price negotiable", user_id: 3)