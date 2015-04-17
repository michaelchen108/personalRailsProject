# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


%w(Billy Bob Joe).each do |name|
  User.create name: name, email: name+"@#{name}.com", password: 'password'
end

Post.create(title: "Bicycle", description: "This is an old bicycle that I'm selling for $50.", user_id: User.first)
Post.create(title: "Lawn Mower", description: "I need to get rid of this lawnmower, please pick it up!", user_id: User.second);
Post.create(title: "TV Monitor", description: "A 36 inch monitor that I don't need anymore, please PM me if you're interested.", user_id: User.third);